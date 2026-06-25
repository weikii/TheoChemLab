@echo off
setlocal

cd /d "%~dp0"

set "PYTHON_EXE=D:\miniconda3\python.exe"
set "DEFAULT_MESSAGE=Update documentation"

echo TheoChem Lab documentation updater
echo Repository: %CD%
echo.

if not exist "%PYTHON_EXE%" (
    echo Python was not found:
    echo   %PYTHON_EXE%
    pause
    exit /b 1
)

echo Building documentation with mkdocs strict mode...
"%PYTHON_EXE%" -m mkdocs build --strict
if errorlevel 1 (
    echo.
    echo Documentation build failed. Nothing was committed or pushed.
    pause
    exit /b 1
)

echo.
git status --short
echo.

git add -A
git diff --cached --quiet
if not errorlevel 1 (
    echo No documentation changes to commit.
    pause
    exit /b 0
)

set /p COMMIT_MESSAGE=Enter commit message, or press Enter to use "%DEFAULT_MESSAGE%": 
if "%COMMIT_MESSAGE%"=="" set "COMMIT_MESSAGE=%DEFAULT_MESSAGE%"

echo.
echo Committing changes...
git commit -m "%COMMIT_MESSAGE%"
if errorlevel 1 (
    echo Commit failed.
    pause
    exit /b 1
)

echo.
echo Pushing to origin main...
git push origin main
if errorlevel 1 (
    echo Push failed.
    pause
    exit /b 1
)

echo.
echo Done. GitHub Pages will update after the workflow finishes.
pause
