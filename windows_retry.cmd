@echo off
rem initiate the retry number
set retryNumber=0
set maxRetries=3

:COMMAND
%*

rem problem?
IF NOT ERRORLEVEL 1 GOTO :EOF
@echo Oops, command exited with code %ERRORLEVEL% - let us try again!
set /a retryNumber=%retryNumber%+1
IF %reTryNumber% LSS %maxRetries% (GOTO :COMMAND)
@echo Sorry, we tried doing command for %maxRetries% times and all attempts were unsuccessful!
EXIT /B 1
