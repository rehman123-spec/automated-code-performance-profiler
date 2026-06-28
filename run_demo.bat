@echo off
REM Attempt to run the demo with Python or py launcher.
set PYTHON_EXEC=
where python >nul 2>nul && set PYTHON_EXEC=python
if not defined PYTHON_EXEC (
    where py >nul 2>nul && set PYTHON_EXEC=py
)
if not defined PYTHON_EXEC (
    echo Python not found on PATH. Please install Python 3.9+ and retry.
    exit /b 1
)
"%PYTHON_EXEC%" app.py
