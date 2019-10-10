@ echo off
set file=%1
 FOR /F "delims=" %%i IN ("%file%") DO (
REM filedrive=%%~di
REM filepath=%%~pi
set filename=%%~ni
REM fileextension=%%~xi
)
REM echo %filename%
set filenamework = work.%filename%
vlib work
vcom -2008 -reportprogress 300 -work work %file%
vsim -do "vsim %filenamework%"
vdel -all -lib work