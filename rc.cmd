@echo off
chcp 65001 2>nul >nul
echo ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
echo ░ Microsoft Resource-Compiler Wrap.                      ░
echo ░ - - - - - - - - - - - - - - - - - - - - - - - - - - -  ░
echo ░  ∙ Latest Windows-SDK "Include\" folder (Auto Load!).  ░
echo ░  ∙ Latest RC.EXE (v6.1.7600.16385).                    ░
echo ░  ∙ 32/64bit RC.EXE (Auto switch).                      ░
echo ░  ∙ Compatible with all your old RC.EXE scripts.        ░
echo ░  ∙ May include extra h-files under "Include\" folder.  ░
echo ░  ∙ Drag^&Drop ANY amount of rc files!.                  ░
echo ░  ∙ Unicode Support.                                    ░
echo ░  ∙ Portable.                                           ░
echo ░ - - - - - - - - - - - - - - - - - - - - - - - - - - -  ░
echo ░                           Elad Karako. September 2017. ░
echo ░        https://github.com/eladkarako/rc-with-includes/ ░
echo ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
echo.

set FOLDER_INCLUDES="%~dp0Include"
set FILE_RC="%~dp0rc\32bit\rc.exe"
if ["%PROCESSOR_ARCHITECTURE%"] == ["AMD64"] (
  set FILE_RC="%~dp0rc\64bit\rc.exe"
)

for /f %%a in ("%FOLDER_INCLUDES%")do ( set "FOLDER_INCLUDES=%%~fsa"  )
for /f %%a in ("%FILE_RC%")do (         set "FILE_RC=%%~fsa"          )


:LOOP
echo.

::has argument ?
if ["%~1"]==[""] (
  echo done.
  goto END;
)

echo "%~1"

::argument exist ?
if not exist %~s1 (
  echo not exist
  goto NEXT;
)
::file exist ?
echo exist
if exist %~s1\NUL (
  echo is a directory
  goto NEXT;
)
::OK
echo is a file
::-------------------------------------------------------------------------------------------
::-------------------------------------------------------------------------------------------


set RUN_CMD=%FILE_RC% /nologo /v /i "%FOLDER_INCLUDES%" %*

echo %RUN_CMD%
call %RUN_CMD%

::-------------------------------------------------------------------------------------------
::-------------------------------------------------------------------------------------------
:NEXT
shift
goto LOOP

:END
echo.
pause

