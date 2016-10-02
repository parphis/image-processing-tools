# image-processing-tools
Set of tools (code snippets) to process (resize, detect things etc.) images

1. Bulk image resizer using ImageMagick [piccon.bat]
Resize images in one process using a standard Windows batch file.
Prerequisits: ImageMagick and its convert utility must be installed and the OS PATH must contain the ImageMagick path.

Usage: piccon.bat <file(s)> <geometry> <new name prefix>
  file(s): Mask for the DIR /B command, e.g. pic_*jpg
  geometry: New image size, e.g. 600x800. Look at http://www.imagemagick.org/Usage/resize/ for more details
  new name prefix: Name prefix for the modified image, e.g. new_
