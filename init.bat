@echo off

rem ===========================================================================
rem My Windows settings.
rem Set path to mingw
rem 
rem     Author: S.Mukai
rem     License: MIT
rem ===========================================================================

doskey ls=ls --color=auto --show-control-chars -N $*
doskey grep=grep --color=auto $*
doskey rm=rm -i $*
doskey cp=cp -i $*
doskey mv=mv -i $*
doskey vi=C:\usr\bin\vim\vim.exe $*
doskey vim=C:\usr\bin\vim\vim.exe $*
doskey gvim=C:\usr\bin\vim\gvim.exe $*
doskey peco=C:\usr\bin\peco.exe $*
doskey pcd=%USERPROFILE%\private\pcd\pcd.bat $*
doskey home=cd %USERPROFILE%
rem doskey cd=%USERPROFILE%\gitcd.bat

doskey pomo=C:\usr\bin\pomodoro\pomodoro.bat
doskey backup=C:\usr\bin\backup\simple-copy.bat $*

rem ---------- Windows Application ----------
doskey sakura=C:\"Program Files (x86)"\sakura\sakura.exe $*
doskey teraterm=C:\"Program Files (x86)"\teraterm\ttermpro.exe $*

rem --- Set loaded flag ---
if "%CMD_LOADED%" neq "" goto :eof
set CMD_LOADED=1

rem --- Set path ---
set GIT_EDITOR=C:/usr/bin/vim/vim.exe
set PATH=%PATH%;C:\Program Files\Git\bin;C:\Program Files\Git\usr\bin;C:\peco
set PATH=%PATH%;C:\Python27\Scripts
set PATH=%PATH%;C:\usr\bin
set PATH=%PATH%;C:\usr\bin\mysql\bin

cls
