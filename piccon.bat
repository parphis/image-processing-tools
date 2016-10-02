@echo off
REM GOAL: To resize pictures in one process.
REM PRE:  ImageMagick and its convert utility must be installed and
REM       the PATH must contain the ImageMagick path.
SET f=%1
SET s=%2
SET prefix=%3

IF [%f%] == [] GOTO :help
IF [%s%] == [] GOTO :help
IF [%prefix%] == [] GOTO :help

FOR /f "tokens=1" %%A IN ('dir /b %f%') DO (
  echo Converting %%A
  convert -resize %s% %%A %prefix%%%A )

GOTO :end

:help
  echo Usage: piccon.bat ^<file(s)^> ^<geometry^> ^<new name prefix^>
  echo  file(s): Mask for the DIR /B command, e.g. pic_*jpg
  echo  geometry: New image size, e.g. 600x800. Look at http://www.imagemagick.org/Usage/resize/ for more details
  echo  new name prefix: Name prefix for the modified image, e.g. new_
  GOTO :end
:end