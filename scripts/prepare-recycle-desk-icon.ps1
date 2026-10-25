param([Parameter(Mandatory)][string]$Source)
$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Drawing
$inputImage = [Drawing.Bitmap]::new((Resolve-Path -LiteralPath $Source).Path)
$output = [Drawing.Bitmap]::new(256, 256, [Drawing.Imaging.PixelFormat]::Format32bppArgb)
$graphics = [Drawing.Graphics]::FromImage($output)
try {
    # Keep the approved silhouette; fit its visible bounds inside a 224 px square.
    $left = $inputImage.Width; $top = $inputImage.Height; $right = -1; $bottom = -1
    for ($y = 0; $y -lt $inputImage.Height; $y++) {
        for ($x = 0; $x -lt $inputImage.Width; $x++) {
            if ($inputImage.GetPixel($x, $y).A -gt 16) {
                $left = [Math]::Min($left, $x); $top = [Math]::Min($top, $y)
                $right = [Math]::Max($right, $x); $bottom = [Math]::Max($bottom, $y)
            }
        }
    }
    if ($right -lt $left) { throw 'Source image is transparent' }
    $left = [Math]::Max(0, $left - 4); $top = [Math]::Max(0, $top - 4)
    $right = [Math]::Min($inputImage.Width - 1, $right + 4)
    $bottom = [Math]::Min($inputImage.Height - 1, $bottom + 4)
    $width = $right - $left + 1; $height = $bottom - $top + 1
    $scale = 224.0 / [Math]::Max($width, $height)
    $destination = [Drawing.RectangleF]::new((256 - $width * $scale) / 2, (256 - $height * $scale) / 2, $width * $scale, $height * $scale)
    $graphics.Clear([Drawing.Color]::Transparent)
    $graphics.InterpolationMode = [Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $graphics.PixelOffsetMode = [Drawing.Drawing2D.PixelOffsetMode]::HighQuality
    $graphics.DrawImage($inputImage, $destination, [Drawing.RectangleF]::new($left, $top, $width, $height), [Drawing.GraphicsUnit]::Pixel)
    $path = Join-Path (Split-Path $PSScriptRoot -Parent) 'media/cpprice11/recycle-desk/icon-v2.png'
    $output.Save($path, [Drawing.Imaging.ImageFormat]::Png)
} finally { $graphics.Dispose(); $output.Dispose(); $inputImage.Dispose() }
