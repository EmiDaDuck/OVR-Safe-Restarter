# 🧩 Restart Oculus Runtime

A Windows batch script that **forcefully terminates all Meta Quest / Oculus runtime processes** and then **restarts the main `OVRService`** for a clean system state.

This script is useful for:
- Fixing headset detection issues  
- Recovering from Link or Air Link freezes  
- Restarting Oculus after updates or crashes  
- Freeing up background CPU/GPU resources  

---

## ⚙️ Features
✅ Forcefully kills all Oculus processes  
✅ Stops and restarts the `OVRService`  
✅ Ensures no hung background tasks remain  
✅ Simple one-click solution for clean runtime restarts  

---

## 🚀 Usage
1. **Download or clone** this repository  
2. **Right-click** `Restart oculus.bat` → **Run as Administrator**  
3. Wait for the message: Oculus runtime has been restarted successfully.
4. You can now safely reconnect your Quest headset or restart Oculus Link without restarting your PC.

---

## 🧠 What It Does
The script stops and restarts the Oculus service while cleaning up all related processes:

| Process | Description |
|----------|--------------|
| `OVRServer_x64.exe` | Main runtime & tracking server |
| `OVRServiceLauncher.exe` | Automatically relaunches runtime |
| `OVRLibraryService.exe` | Device and firmware handler |
| `OVRRedir.exe` | API redirection layer |
| `OVRTrayIcon.exe` | System tray UI |
| `OVRUpdateService.exe` | Runtime updater |
| `OVRMetricsService.exe` | Performance/telemetry service |
| `OVRPluginService.exe` | Plugin bridge for engines |
| `OculusClient.exe` | Oculus desktop app |
| `OculusDash.exe` | Dash / Home runtime |
| `OculusMirror.exe` | Mirror window utility |
| `OculusDebugTool.exe` | Developer tool |
| `OculusDiagnostics.exe` | Diagnostic utility |

---

## 🛠️ Requirements
- Windows 10 or 11  
- Administrator privileges  

---

## 🧱 Optional Variants
If you prefer to **fully shut down** Oculus background services without restarting, you can create a version called:

