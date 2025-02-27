@echo off
color 0E
c:
cd c:\GOG Games\Tomb Raider 3
goto launcher

:launcher
cls
echo.
echo.
echo.	------------------------------------------------
echo.	TOMB RAIDER III GOG Edition
echo.	------------------------------------------------
echo.
echo.	1) Tomb Raider III
echo.	2) Setup dialog box
echo.	3) How to play TR3 with a gamepad
echo.	4) Exit
echo.
echo.	------------------------------------------------
echo.
echo.




choice /c1234 /s /N Your choice? [1-4]:
if errorlevel 4 goto exit
if errorlevel 3 goto gamepad
if errorlevel 2 goto setup
if errorlevel 1 goto tr3


:tr3
cls
start Tomb3.exe
goto :launcher


:setup
cls
echo.
echo.
echo.	------------------------------------------------
echo.	TOMB RAIDER III GOG Edition - Setup
echo.	------------------------------------------------
echo.
echo.	Graphics Adapter	- choose ONLY dgVoodoo
echo.	Output Settings 	- choose ONLY dgVoodoo
echo.	Output Resolution	- for a native game experience
echo.				prefer a resolution with 
echo.				4:3 ratio and 32 bits colors
echo.				if you are not sure choose 640x480x32
echo.				- or you can choose your Desktop resolution as
echo.				Arsunt patch will adapt TR3 ratio and fov 
echo.				to your desktop resolution
echo.	Others options		- You should not need to change others options
echo.
echo.	------------------------------------------------
echo.
echo.
start Tomb3.exe -setup
pause
goto :launcher


:gamepad
cls
start explorer c:\GOG Games\Tomb Raider 3\gamepad profiles\
start iexplore c:\GOG Games\Tomb Raider 3\gamepad profiles\tr3_gamepad_readme.html
goto :launcher


:exit
exit
