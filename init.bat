@echo off

doskey ls=ls --color=auto --show-control-chars -N $*
doskey grep=grep --color=auto $*
doskey rm=rm -i $*
doskey cp=cp -i $*
doskey mv=mv -i $*
doskey vi=C:\vim\vim.exe $*
doskey vim=C:\vim\vim.exe $*
doskey gvim=C:\vim\gvim.exe $*


rem --- Set loaded flag ---
if "%CMD_LOADED%" neq "" goto :eof
set CMD_LOADED=1

rem --- Set path ---
set GIT_EDITOR=C:\vim\vim.exe
set PATH=%PATH%;C:\Program Files\Git\bin;C:\Program Files\Git\usr\bin

cls
