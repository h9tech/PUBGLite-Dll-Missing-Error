@echo off
echo ------------------------------------------------------------
echo      Solving ".dll file is missing" error in PUBG Lite.
echo ------------------------------------------------------------
echo                          H9
echo ____________________________________________________________
@echo:
goto do_if_admin

:do_if_admin

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Copying dll files in system32...
	copy "%~dp0\dll\msvcp140.dll" "C:\Windows\System32"
	copy "%~dp0\dll\vcruntime140.dll" "C:\Windows\System32"
	echo:
	echo Done! Now, you shouldn't be prompt saying 
	echo "VCRUNTIME140.dll" or "MSVCP140.dll" not found.
	echo:
	echo If you still get error, 
	echo Read: github.com/h9tech/PUBGLite-Dll-Missing-Error
	echo Message Us: instagram.com/h9_tech_
	echo:
	echo Support us On YouTube: youtube.com/h9techyoutube
	echo:
	echo:
	echo:Please Subscribe to H9...Press {enter} to continue.
	timeout /t 4 > nul
	cscript "%~dp0Support Us.vbs"
	echo ____________________________________________________________
	echo Thank you! Happy Gaming!!
    ) else (
        echo Administrative permission required.
	echo    Please Run as administrator.
    )

    pause >nul
