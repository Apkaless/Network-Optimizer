set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11343f9d-f84d-48d8-8810-d3c24df38ce0} /v TcpAckFrequency /t Reg_Dword /d 1 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11343f9d-f84d-48d8-8810-d3c24df38ce0} /v TCPNoDelay /t Reg_Dword /d 1 /f
ipconfig /release
ipconfig /flushdns
ipconfig /renew
netsh int ip reset
netsh winsock reset 
echo off
echo:
echo Please Restart Your System. Made By Apkaless. Visit My Github https://www.github.com/Apkaless .
echo:
PAUSE