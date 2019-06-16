call runcrud.bat

if "%ERRORLEVEL%" == "0" goto chrome
echo.
echo runcrud.bat has errors - breaking work
goto fail

:chrome
start chrome.exe http://localhost:8080/crud/v1/task/getTasks

:fail
echo.
echo There were errors with runcrud.bat.
goto end

:end
echo.
echo Work of showtasks.bat is finished!.