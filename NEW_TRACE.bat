@echo off

echo "[/] EXIT PROGRAMS"
taskkill /f /im FiveM.exe
taskkill /f /im chrome.exe
taskkill /f /im steam.exe
taskkill /f /im GameBar.exe
timeout /t 2
cls

echo "[/] CLEARING WINDOWS TRACES"
del /s /f /q C:\Windows\Prefetch\*.*
del /s /f /q C:\Windows\Temp\*.*
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\Temp\*.*
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.*
cls

echo "[/] CLEARING USED DRIVER FILES"
del /s /f /q %SYSTEMDRIVE%\AMD\*.*
del /s /f /q %SYSTEMDRIVE%\NVIDIA\*.*
del /s /f /q %SYSTEMDRIVE%\INTEL\*.*
cls

echo "[/] REMOVING EVENT LOGS"
wevtutil.exe cl Application
wevtutil.exe cl System
bitsadmin /reset /allusers
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v ClearPageFileAtShutdown /t REG_DWORD /d 1 /f
powercfg -h off
vssadmin delete shadows /all /quiet
for /F "tokens=*" %%1 in ('wevtutil.exe el') DO wevtutil.exe cl "%%1"
cls

echo "[/] REMOVING DUMPS"
del /s /f /q "C:\Windows\Minidump\*"
del /s /f /q "C:\Windows\MEMORY.DMP"
del /s /f /q "C:\Windows\SoftwareDistribution\Download\*"
del /s /f /q "C:\Windows\SoftwareDistribution\DataStore\*"
del /s /f /q "CrashDumps\*"
del /f /s /q "C:\ProgramData\Microsoft\Windows\WER\*"
del /f /s /q "C:\Windows\System32\spool\PRINTERS\*"
cls

echo "[/] REMOVING UPDATED TRACES"
rd /s /q "%localappdata%\Packages\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\AppData\CacheStorage"
rd /s /q "%localappdata%\Microsoft\Internet Explorer\CacheStorage"
rd /s /q "%localappdata%\FiveM\FiveM.app\logs"
rd /s /q "%programdata%\regid.1991-06.com.microsoft"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\game-storage"
rd /s /q "%localappdata%\Microsoft\GameDVR\GameMRU"
rd /s /q "%localappdata%\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\LocalCache"
rd /s /q "%localappdata%\Steam\htmlcache\Network"
rd /s /q "%appdata%\Microsoft\Windows\Recent\CustomDestinations"
rd /s /q "%localappdata%\Google\Chrome\User Data\GrShaderCache"
rd /s /q "%localappdata%\Google\Chrome\User Data\Default\Code Cache\js\index-dir"
rd /s /q "%programdata%\Incredibuild\Data"
rd /s /q "%programfiles(x86)%\Incredibuild\Temp"
rd /s /q "%localappdata%\Google\Chrome\User Data\Safe Browsing"
rd /s /q "%systemroot%\System32\sru"
rd /s /q "%localappdata%\Microsoft\TokenBroker\Cache"
rd /s /q "%programdata%\USOPrivate\UpdateStore"
rd /s /q "%localappdata%\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\LocalState\Logs"
rd /s /q "%localappdata%\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\LocalState\DiagOutputDir"
rd /s /q "%systemroot%\Logs\waasmedic"
rd /s /q "%localappdata%\Steam\htmlcache\Cache\Cache_Data"


echo "[/] REMOVING UPDATED FIVEM TRACES"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\nui-storage\Cache\Cache_Data"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\nui-storage\blob_storage"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\nui-storage\Local Storage\leveldb"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\nui-storage\Session Storage"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\nui-storage\IndexedDB"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\nui-storage\Code Cache\js"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\server-cache\db"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\server-cache-priv\db"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\nui-storage\Cache\Cache_Data"
del /s /f /q "%localappdata%\FiveM\FiveM.app\data\nui-storage\*.log"
cls


echo "[/] EMPTY BIN"
rd /q /s %systemdrive%\$Recycle.Bin
rd /q /s A:\$Recycle.Bin
rd /q /s B:\$Recycle.Bin
rd /q /s C:\$Recycle.Bin
rd /q /s D:\$Recycle.Bin
rd /q /s E:\$Recycle.Bin
rd /q /s F:\$Recycle.Bin
rd /q /s G:\$Recycle.Bin
rd /q /s H:\$Recycle.Bin
rd /q /s I:\$Recycle.Bin
rd /q /s J:\$Recycle.Bin
rd /q /s K:\$Recycle.Bin
rd /q /s L:\$Recycle.Bin
rd /q /s M:\$Recycle.Bin
rd /q /s N:\$Recycle.Bin
rd /q /s O:\$Recycle.Bin
rd /q /s P:\$Recycle.Bin
rd /q /s Q:\$Recycle.Bin
rd /q /s R:\$Recycle.Bin
rd /q /s S:\$Recycle.Bin
rd /q /s T:\$Recycle.Bin
rd /q /s U:\$Recycle.Bin
rd /q /s V:\$Recycle.Bin
rd /q /s W:\$Recycle.Bin
rd /q /s X:\$Recycle.Bin
rd /q /s Y:\$Recycle.Bin
rd /q /s Z:\$Recycle.Bin
cls

echo "[+] FIVEM CLEANED"
exit
