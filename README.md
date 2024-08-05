# Backup Solution Firewall Script

This repository contains batch scripts for configuring firewall rules for Veeam Backup & Replication and NetVault 12.4. These scripts ensure that the necessary ports and services are allowed for proper communication between the backup servers and clients.

## Table of Contents
- [Overview](#overview)
- [Veeam Backup & Replication](#veeam-backup--replication)
  - [Server-Side Firewall Rules](#server-side-firewall-rules)
  - [Client-Side Firewall Rules](#client-side-firewall-rules)
- [NetVault 12.4](#netvault-124)
  - [Server-Side Firewall Rules](#netvault-124-server-side-firewall-rules)
  - [Client-Side Firewall Rules](#netvault-124-client-side-firewall-rules)
- [License](#license)

## Overview

This repository provides batch scripts to automate the process of opening and closing firewall ports required by Veeam Backup & Replication and NetVault 12.4.

## Veeam Backup & Replication

### Server-Side Firewall Rules

To ensure proper communication of Veeam Backup & Replication server components, the following ports need to be allowed:

- **TCP 443**: Communication with vCenter and ESXi hosts.
- **TCP 902**: Data transfer between the backup server and ESXi.
- **TCP 9392**: Veeam Backup Service.
- **TCP 9393**: Veeam Backup Catalog Service.
- **TCP 9394**: Veeam Backup Manager.
- **TCP 6160**: Veeam Installer Service.
- **TCP 6162**: Veeam Data Mover Service.
- **TCP 10005**: Veeam Agent for Microsoft Windows in managed mode.
- **TCP 10006**: Veeam Agent for Linux in managed mode.
- **TCP 2500-3300**: Data transmission channels.
- **TCP 49152-65535**: Dynamic RPC port range.
- **TCP 3389**: Remote Desktop access.

### Client-Side Firewall Rules

For Veeam Backup & Replication client components, the following ports need to be allowed:

- **TCP 6160**: Veeam Installer Service.
- **TCP 6162**: Veeam Data Mover Service.
- **TCP 10005**: Used by Veeam Agent for Microsoft Windows in managed mode.
- **TCP 10006**: Used by Veeam Agent for Linux in managed mode.
- **TCP 49152-65535**: Dynamic RPC port range.
- **TCP 2500-3300**: Data transmission channels.

## NetVault 12.4

### NetVault 12.4 Server-Side Firewall Rules

To ensure proper communication of NetVault 12.4 server components, the following ports and services need to be allowed:

#### Ports
- **TCP 20031**: NetVault Backup Service.
- **TCP 20032**: NetVault WebUI Service.
- **TCP 20034**: Client-server communication.
- **TCP 1363**: GUI and client communication.
- **TCP/UDP 20000-20030**: Additional dynamic ports.

#### Services
- **NetVault Backup Service (nvpmgr)**
- **NetVault Inter-Process Communications Manager (nvcmgr)**
- **NetVault Network Manager (nvnmgr)**
- **NetVault Media Manager (nvmedmgr)**
- **NetVault Schedule Manager (nvsched)**
- **NetVault Logging Daemon (nvlogdaemon)**
- **NetVault Audit Verification Manager (nvavp)**
- **NetVault Statistics Manager (nvstatsmngr)**
- **NetVault Report Manager (nvrepdbmngr)**
- **NetVault Web Service Request Handler (nvwsrequesthandler)**
- **NetVault Console Service (nvconsolesvc)**
- **NetVault Deployment Manager (nvdeploymentmgr)**
- **NetVault Device Manager (nvdevmgr)**
- **NetVault NDMP Device Manager (nvndmpdevmgr)**
- **NetVault Job Manager (nvjobmgr)**
- **NetVault Verification Process (nvverify)**

### NetVault 12.4 Client-Side Firewall Rules

For NetVault 12.4 client components, the following ports and services need to be allowed:

#### Ports
- **TCP 20031**: NetVault Backup Service.
- **TCP 20034**: Client-server communication.
- **TCP 1363**: GUI and client communication.
- **TCP/UDP 20000-20030**: Additional dynamic ports.

#### Services
- **NetVault Backup Service (nvpmgr)**
- **NetVault Inter-Process Communications Manager (nvcmgr)**
- **NetVault Network Manager (nvnmgr)**
- **NetVault Statistics Manager (nvstatsmngr)**
- **NetVault Console Service (nvconsolesvc)**
- **NetVault Device Manager (nvdevmgr)**

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.
