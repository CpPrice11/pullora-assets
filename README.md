# Pullora Assets

Типові іконки та скриншоти програм для [Pullora](https://github.com/CpPrice11/pullora).
Це сховище зображень, а не окрема програма. Власні зображення користувача в Pullora мають пріоритет.

## Додати зображення

1. Додайте PNG, JPEG або WebP до `media/owner/repo/`. Використовуйте нижній регістр, латинські літери, цифри, `-`, `_`, `.` у назвах. Не більше 4 MiB на файл.
2. Додайте запис `owner/repo` до `manifest.json`: `icon` — шлях до іконки або `null`, `screenshots` — список шляхів (до 8).
3. Для заміни зображення використайте нове ім’я, наприклад `icon-v2.png` або `library-v2.webp`. Імена файлів є версіями кешу; не перезаписуйте старий файл.
4. Додайте джерело та умови використання до `SOURCES.md`. Зберігайте лише справжні скриншоти без токенів, приватних шляхів чи особистих даних.
5. Збережіть зміни в `main`. Кнопка оновлення бібліотеки Pullora перевіряє маніфест відразу; без ручного оновлення він перевіряється не частіше ніж раз на годину.

```json
"owner/app-name": {
  "icon": "media/owner/app-name/icon-v1.png",
  "screenshots": ["media/owner/app-name/library-v1.webp"]
}
```

Іконки показуються в картках і заголовку подробиць. Скриншоти завантажуються лише після відкриття подробиць; без них галерея прихована. Завантажені файли залишаються доступними без мережі. Якщо типового зображення немає, Pullora використовує звичайний аватар GitHub.

Маніфест має версію `1`, до 128 програм. Шляхи завжди відносні до цього репозиторію; зовнішні URL, SVG і виконувані файли не підтримуються. Для всіх файлів у маніфесті виконайте `python scripts/check_manifest.py` перед публікацією.

## English

Default application icons and screenshots for Pullora. Custom user artwork takes precedence. Add genuine, privacy-safe screenshots under `media/owner/repo/`, list them in `manifest.json`, and document their source in `SOURCES.md`. Use a new filename when replacing an image so offline caches remain predictable. The library refresh button reloads the manifest; automatic checks are limited to once per hour. Images are fetched anonymously from this public repository and cached locally. Missing screenshots do not produce an empty gallery.

## Права / Rights

Немає спільної ліцензії на всі зображення. Права й ліцензії залишаються в їхніх авторів; див. `SOURCES.md`. Не додавайте чужі матеріали без дозволу або належної ліцензії.
