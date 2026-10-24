"""Validate the image manifest before publishing. Uses the Python standard library."""
import json
import re
from pathlib import Path

root = Path(__file__).resolve().parents[1]
manifest = json.loads((root / 'manifest.json').read_text(encoding='utf-8'))
assert manifest['version'] == 1
assert len(manifest['projects']) <= 128
count = 0
for key, project in manifest['projects'].items():
    assert re.fullmatch(r'[a-z0-9_-]+/[a-z0-9_.-]+', key), key
    assert len(project.get('screenshots', [])) <= 8
    for name in [project.get('icon'), *project.get('screenshots', [])]:
        if name is None:
            continue
        parts = name.split('/')
        assert len(parts) == 4 and '/'.join(parts[:3]) == f'media/{key}', name
        assert re.fullmatch(r'[a-z0-9][a-z0-9_.-]*\.(png|jpg|jpeg|webp)', parts[3]), name
        data = (root / name).read_bytes()
        assert 0 < len(data) <= 4 * 1024 * 1024, name
        extension = Path(name).suffix
        assert ((extension == '.png' and data.startswith(b'\x89PNG\r\n\x1a\n'))
                or (extension in ('.jpg', '.jpeg') and data.startswith(b'\xff\xd8\xff'))
                or (extension == '.webp' and data.startswith(b'RIFF') and data[8:12] == b'WEBP')), name
        count += 1
print(f'Validated {len(manifest["projects"])} projects, {count} images.')
