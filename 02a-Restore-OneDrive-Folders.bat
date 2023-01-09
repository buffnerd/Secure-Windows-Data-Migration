@echo off 

taskkill /f /im explorer.exe

timeout /t 2 /nobreak >nul

if not exist "%UserProfile%\Desktop" mkdir "%UserProfile%\Desktop"

xcopy "%UserProfile%\OneDrive - Company Name, Inc\Desktop" "%UserProfile%\Desktop" /E /H /C /I

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Desktop" /t REG_SZ /d "C:\Users\%USERNAME%\Desktop" /f

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Desktop" /t REG_EXPAND_SZ /d %%USERPROFILE%%"\Desktop" /f

attrib +r -s -h "%USERPROFILE%\Desktop" /S /D

timeout /t 1 /nobreak >nul

if not exist "%UserProfile%\Documents" mkdir "%UserProfile%\Documents"

xcopy "%UserProfile%\OneDrive - Company Name, Inc\Documents" "%UserProfile%\Documents" /E /H /C /I

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal" /t REG_SZ /d "C:\Users\%USERNAME%\Documents" /f

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "{f42ee2d3-909f-4907-8871-4c22fc0bf756}" /t REG_EXPAND_SZ /d %%USERPROFILE%%"\Documents" /f

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Personal" /t REG_EXPAND_SZ /d %%USERPROFILE%%"\Documents" /f

attrib +r -s -h "%USERPROFILE%\Documents" /S /D

timeout /t 1 /nobreak >nul

if not exist "%UserProfile%\Pictures" mkdir "%UserProfile%\Pictures"

xcopy "%UserProfile%\OneDrive - Company Name, Inc\Pictures" "%UserProfile%\Pictures" /E /H /C /I

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "My Pictures" /t REG_SZ /d "C:\Users\%USERNAME%\Pictures" /f

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "{0DDD015D-B06C-45D5-8C4C-F59713854639}" /t REG_EXPAND_SZ /d %%USERPROFILE%%"\Pictures" /f

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "My Pictures" /t REG_EXPAND_SZ /d %%USERPROFILE%%"\Pictures" /f

attrib +r -s -h "%USERPROFILE%\Pictures" /S /D

timeout /t 1 /nobreak>null

start explorer.exe




