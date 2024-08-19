@echo off
:: -----------------------------------------------------------------------------
:: Copyright (c) 2024 Hyeonggyun KIM, Terry, P1N9U
::
:: This program is free software: you can redistribute it and/or modify
:: it under the terms of the GNU General Public License as published by
:: the Free Software Foundation, either version 3 of the License, or
:: any later version.
::
:: This program is distributed in the hope that it will be useful,
:: but WITHOUT ANY WARRANTY; without even the implied warranty of
:: MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
:: GNU General Public License for more details.
::
:: You should have received a copy of the GNU General Public License
:: along with this program. If not, see <https://www.gnu.org/licenses/>.
:: -----------------------------------------------------------------------------

:display_license
echo -----------------------------------------------------------------------------
echo Copyright (c) 2024 Hyeonggyun KIM, Terry, P1N9U 
echo.
echo This program is free software: you can redistribute it and/or modify
echo it under the terms of the GNU General Public License as published by
echo the Free Software Foundation, either version 3 of the License, or
echo  any later version.
echo.
echo This program is distributed in the hope that it will be useful,
echo but WITHOUT ANY WARRANTY; without even the implied warranty of
echo MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
echo GNU General Public License for more details.
echo.
echo You should have received a copy of the GNU General Public License
echo along with this program. If not, see ^<https://www.gnu.org/licenses/^>.
echo -----------------------------------------------------------------------------
echo.
echo Do you accept the terms of the GNU General Public License? (y/n)
set /p license_acceptance=

if /i "%license_acceptance%" neq "y" (
    echo You did not accept the license terms. Exiting...
    exit /b 1
)

echo Allowing Windows Firewall rules for NetVault 12.4 Client Services...

set "NETVAULT_PATH=C:\Program Files\Quest\NetVault Backup\bin"

netsh advfirewall firewall add rule name="NetVault Process Manager" dir=in action=allow program="%NETVAULT_PATH%\nvpmgr.exe"
netsh advfirewall firewall add rule name="NetVault IPC Manager" dir=in action=allow program="%NETVAULT_PATH%\nvcmgr.exe"
netsh advfirewall firewall add rule name="NetVault Network Manager" dir=in action=allow program="%NETVAULT_PATH%\nvnmgr.exe"
netsh advfirewall firewall add rule name="NetVault Media Manager" dir=in action=allow program="%NETVAULT_PATH%\nvmedmgr.exe"
netsh advfirewall firewall add rule name="NetVault Schedule Manager" dir=in action=allow program="%NETVAULT_PATH%\nvsched.exe"
netsh advfirewall firewall add rule name="NetVault Logging Daemon" dir=in action=allow program="%NETVAULT_PATH%\nvlogdaemon.exe"
netsh advfirewall firewall add rule name="NetVault Audit Verification Manager" dir=in action=allow program="%NETVAULT_PATH%\nvavp.exe"
netsh advfirewall firewall add rule name="NetVault Statistics Manager" dir=in action=allow program="%NETVAULT_PATH%\nvstatsmngr.exe"
netsh advfirewall firewall add rule name="NetVault Report Manager" dir=in action=allow program="%NETVAULT_PATH%\nvrepdbmngr.exe"
netsh advfirewall firewall add rule name="NetVault Web Service Request Handler" dir=in action=allow program="%NETVAULT_PATH%\nvwsrequesthandler.exe"
netsh advfirewall firewall add rule name="NetVault Console Service" dir=in action=allow program="%NETVAULT_PATH%\nvconsolesvc.exe"
netsh advfirewall firewall add rule name="NetVault Device Manager" dir=in action=allow program="%NETVAULT_PATH%\nvdevmgr.exe"
netsh advfirewall firewall add rule name="NetVault NDMP Device Manager" dir=in action=allow program="%NETVAULT_PATH%\nvndmpdevmgr.exe"
netsh advfirewall firewall add rule name="NetVault Job Manager" dir=in action=allow program="%NETVAULT_PATH%\nvjobmgr.exe"
netsh advfirewall firewall add rule name="NetVault Verification Process" dir=in action=allow program="%NETVAULT_PATH%\nvverify.exe"

echo Firewall rules for NetVault 12.4 client services have been added.
pause

