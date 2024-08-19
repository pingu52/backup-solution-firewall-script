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

echo Removing Windows Firewall rules for Veeam Backup and Replication...

:: Remove firewall rules for Veeam Backup and Replication
netsh advfirewall firewall delete rule name="Veeam TCP 10002"
netsh advfirewall firewall delete rule name="Veeam TCP 10006"
netsh advfirewall firewall delete rule name="Veeam TCP 2500-3300"
netsh advfirewall firewall delete rule name="Veeam TCP 6160"
netsh advfirewall firewall delete rule name="Veeam TCP 6162"
netsh advfirewall firewall delete rule name="Veeam TCP 49152-65535"
netsh advfirewall firewall delete rule name="Veeam TCP 135"
netsh advfirewall firewall delete rule name="Veeam UDP 135"
netsh advfirewall firewall delete rule name="Veeam TCP 137-139"
netsh advfirewall firewall delete rule name="Veeam UDP 137-139"
netsh advfirewall firewall delete rule name="Veeam TCP 445"
netsh advfirewall firewall delete rule name="Veeam UDP 445"

echo Windows Firewall rules for Veeam have been removed successfully.
pause
