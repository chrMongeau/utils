@echo off

rem Map letter X to current directory -> X:/ points to %CD%
rem (change the filename from X.bat to Y.bat to have Y:/ as %CD%)

echo Current substitutions in effect:
subst

set drive=%~n0:

echo Deleting "%drive%" substitutions
subst %drive% /d >nul

subst %drive% "%CD%"

echo .
echo New substitutions:
subst
echo .
pause

