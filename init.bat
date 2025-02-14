@echo off
echo Checking for Node.js and npm...
where node 2>nul
if %errorlevel% neq 0 (
    echo Node.js is not installed. Please download and install from https://nodejs.org/
    pause
    exit /b 1
)

where npm 2>nul
if %errorlevel% neq 0 (
    echo npm is not installed. Please install Node.js which includes npm.
    pause
    exit /b 1
)

echo Installing dependencies...
npm install

echo Project setup complete! Starting application...
ng serve