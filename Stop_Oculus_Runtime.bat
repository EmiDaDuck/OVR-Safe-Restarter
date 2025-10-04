@echo off
echo ================================================
echo   Restarting Meta Quest (Oculus) Runtime Cleanly
echo ================================================
echo.

:: Stop Oculus Service first
echo [1/4] Stopping Oculus service...
net stop OVRService >nul 2>&1

:: Kill all remaining Oculus/Meta processes
echo [2/4] Killing all Oculus processes...
taskkill /IM OVRServer_x64.exe /F >nul 2>&1
taskkill /IM OVRServiceLauncher.exe /F >nul 2>&1
taskkill /IM OVRLibraryService.exe /F >nul 2>&1
taskkill /IM OVRRedir.exe /F >nul 2>&1
taskkill /IM OVRTrayIcon.exe /F >nul 2>&1
taskkill /IM OVRUpdateService.exe /F >nul 2>&1
taskkill /IM OVRMetricsService.exe /F >nul 2>&1
taskkill /IM OVRPluginService.exe /F >nul 2>&1
taskkill /IM OculusClient.exe /F >nul 2>&1
taskkill /IM OculusDash.exe /F >nul 2>&1
taskkill /IM OculusMirror.exe /F >nul 2>&1
taskkill /IM OculusDebugTool.exe /F >nul 2>&1
taskkill /IM OculusDiagnostics.exe /F >nul 2>&1

:: Wait a bit
timeout /t 3 /nobreak >nul

:: Restart the main service
echo [3/4] Restarting Oculus service...
net start OVRService >nul 2>&1

:: Final confirmation
echo [4/4] Oculus runtime has been restarted successfully.
echo.
echo You can now safely reconnect your Quest headset.
echo ================================================
pause
