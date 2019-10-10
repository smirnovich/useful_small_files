@ echo off

echo === file ======================================================
echo %*
rem set arg1=%1
rem echo %arg1%

SETLOCAL
set file=%1
set huemoe=D:/fpga_projects/altera/edit_engineer_spit_sync2/edit.engineer_spit/_SYNC/syncphaze.vhd
FOR /F "delims=" %%i IN ("%file%") DO (
set filedrive=%%~di
set filepath=%%~pi
set filename=%%~ni
set fileextension=%%~xi
)
set c=%filedrive%%filepath%

code -g %c% %2

exit