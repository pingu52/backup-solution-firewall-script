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
echo any later version.
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

echo Removing Windows Firewall rules for NetVault 12.4 Client Services...

netsh advfirewall firewall delete rule name="NetVault Process Manager"
netsh advfirewall firewall delete rule name="NetVault IPC Manager"
netsh advfirewall firewall delete rule name="NetVault Network Manager"
netsh advfirewall firewall delete rule name="NetVault Media Manager"
netsh advfirewall firewall delete rule name="NetVault Schedule Manager"
netsh advfirewall firewall delete rule name="NetVault Logging Daemon"
netsh advfirewall firewall delete rule name="NetVault Audit Verification Manager"
netsh advfirewall firewall delete rule name="NetVault Statistics Manager"
netsh advfirewall firewall delete rule name="NetVault Report Manager"
netsh advfirewall firewall delete rule name="NetVault Web Service Request Handler"
netsh advfirewall firewall delete rule name="NetVault Console Service"
netsh advfirewall firewall delete rule name="NetVault Device Manager"
netsh advfirewall firewall delete rule name="NetVault NDMP Device Manager"
netsh advfirewall firewall delete rule name="NetVault Job Manager"
netsh advfirewall firewall delete rule name="NetVault Verification Process"

echo Firewall rules for NetVault 12.4 client services have been removed.
pause
