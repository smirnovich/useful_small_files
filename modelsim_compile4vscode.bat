rem SETCONSOLE /hide
@ echo off
set file=%1
vlib work
vcom -2008 -reportprogress 300 -work work %file%
vdel -all -lib work