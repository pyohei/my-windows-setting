@echo off
rem --------------------------------------------------------------------
rem Release windows initialized script in windows.
rem 
rem Version: 0.1
rem --------------------------------------------------------------------

rem Set variable data.
set CUR_DIR=%~dp0
set HOME_DIR=%HOMEPATH%
set TODAY=%date:~0,4%%date:~5,2%%date:~8,2%
set NOW=%TODAY%%time:~0,2%%time:~3,2%%time:~6,2%

rem Create backup directory.
set BACKUP_DIR=%CUR_DIR%\backup
if not exist %BACKUP_DIR% (
  cd %CUR_DIR%
  mkdir backup
)

rem Backup init file.
if exist %HOME_DIR%\init.bat (
  copy %HOME_DIR%\init.bat %CUR_DIR%\backup\init.bat.%NOW%
)

rem Copy vimrc.
copy %CUR_DIR%\init.bat %HOME_DIR%\init.bat

echo "Finish release!"
