#!/bin/bash

# -----------------------------------------------------------------------------
# Copyright (c) 2024 Hyeonggyun KIM, Terry, P1N9U
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
# -----------------------------------------------------------------------------

display_license() {
  echo "-----------------------------------------------------------------------------"
  echo "Copyright (c) 2024 Hyeonggyun KIM, Terry, P1N9U"
  echo
  echo "This program is free software: you can redistribute it and/or modify"
  echo "it under the terms of the GNU General Public License as published by"
  echo "the Free Software Foundation, either version 3 of the License, or"
  echo "any later version."
  echo
  echo "This program is distributed in the hope that it will be useful,"
  echo "but WITHOUT ANY WARRANTY; without even the implied warranty of"
  echo "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the"
  echo "GNU General Public License for more details."
  echo
  echo "You should have received a copy of the GNU General Public License"
  echo "along with this program. If not, see <https://www.gnu.org/licenses/>."
  echo "-----------------------------------------------------------------------------"
  echo
  read -p "Do you accept the terms of the GNU General Public License? (y/n): " license_acceptance

  if [[ "$license_acceptance" != "y" && "$license_acceptance" != "Y" ]]; then
    echo "You did not accept the license terms. Exiting..."
    exit 1
  fi
}

remove_firewall_rules() {
  echo "Removing firewall rules for Veeam Backup and Replication..."

  firewall-cmd --permanent --remove-port=10002/tcp
  firewall-cmd --permanent --remove-port=10006/tcp
  firewall-cmd --permanent --remove-port=2500-3300/tcp
  firewall-cmd --permanent --remove-port=6160/tcp
  firewall-cmd --permanent --remove-port=6162/tcp
  firewall-cmd --permanent --remove-port=49152-65535/tcp
  firewall-cmd --permanent --remove-port=135/tcp
  firewall-cmd --permanent --remove-port=135/udp
  firewall-cmd --permanent --remove-port=137-139/tcp
  firewall-cmd --permanent --remove-port=137-139/udp
  firewall-cmd --permanent --remove-port=445/tcp
  firewall-cmd --permanent --remove-port=445/udp

  firewall-cmd --reload

  echo "Firewall rules for Veeam have been removed successfully."
}

# Main script execution
display_license
remove_firewall_rules
