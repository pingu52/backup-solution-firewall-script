# 백업 솔루션 방화벽 스크립트

이 저장소는 Veeam Backup & Replication 및 NetVault 12.4를 위한 방화벽 규칙을 구성하는 배치 스크립트를 포함하고 있습니다. 이 스크립트는 백업 서버와 클라이언트 간의 적절한 통신을 보장하기 위해 필요한 포트와 서비스를 허용합니다.

[View README in English](README.md)

## 목차
- [개요](#개요)
- [Veeam Backup & Replication](#veeam-backup--replication)
  - [서버 측 방화벽 규칙](#서버-측-방화벽-규칙)
  - [클라이언트 측 방화벽 규칙](#클라이언트-측-방화벽-규칙)
- [NetVault 12.4](#netvault-124)
  - [서버 측 방화벽 규칙](#netvault-124-서버-측-방화벽-규칙)
  - [클라이언트 측 방화벽 규칙](#netvault-124-클라이언트-측-방화벽-규칙)
- [라이선스](#라이선스)
- [기여자](#기여자)

## 개요

이 저장소는 Veeam Backup & Replication 및 NetVault 12.4에 필요한 방화벽 포트를 열고 닫는 과정을 자동화하는 배치 스크립트를 제공합니다.

## Veeam Backup & Replication

### 서버 측 방화벽 규칙

Veeam Backup & Replication 서버 구성 요소의 적절한 통신을 보장하려면 다음 포트를 허용해야 합니다:

- **TCP 443**: vCenter 및 ESXi 호스트와의 통신.
- **TCP 902**: 백업 서버와 ESXi 간의 데이터 전송.
- **TCP 9392**: Veeam Backup 서비스.
- **TCP 9393**: Veeam Backup 카탈로그 서비스.
- **TCP 9394**: Veeam Backup Manager.
- **TCP 6160**: Veeam Installer 서비스.
- **TCP 6162**: Veeam Data Mover 서비스.
- **TCP 10005**: 관리 모드의 Veeam Agent for Microsoft Windows.
- **TCP 10006**: 관리 모드의 Veeam Agent for Linux.
- **TCP 2500-3300**: 데이터 전송 채널.
- **TCP 49152-65535**: 동적 RPC 포트 범위.
- **TCP 3389**: 원격 데스크톱 접근.

### 클라이언트 측 방화벽 규칙

Veeam Backup & Replication 클라이언트 구성 요소의 적절한 통신을 보장하려면 다음 포트를 허용해야 합니다:

- **TCP 6160**: Veeam Installer 서비스.
- **TCP 6162**: Veeam Data Mover 서비스.
- **TCP 10005**: 관리 모드의 Veeam Agent for Microsoft Windows.
- **TCP 10006**: 관리 모드의 Veeam Agent for Linux.
- **TCP 49152-65535**: 동적 RPC 포트 범위.
- **TCP 2500-3300**: 데이터 전송 채널.

## NetVault 12.4

### NetVault 12.4 서버 측 방화벽 규칙

NetVault 12.4 서버 구성 요소의 적절한 통신을 보장하려면 다음 포트와 서비스를 허용해야 합니다:

#### 포트
- **TCP 20031**: NetVault 백업 서비스.
- **TCP 20032**: NetVault WebUI 서비스.
- **TCP 20034**: 클라이언트-서버 통신.
- **TCP 1363**: GUI 및 클라이언트 통신.
- **TCP/UDP 20000-20030**: 추가 동적 포트.

#### 서비스
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

### NetVault 12.4 클라이언트 측 방화벽 규칙

NetVault 12.4 클라이언트 구성 요소의 적절한 통신을 보장하려면 다음 포트와 서비스를 허용해야 합니다:

#### 포트
- **TCP 20031**: NetVault 백업 서비스.
- **TCP 20034**: 클라이언트-서버 통신.
- **TCP 1363**: GUI 및 클라이언트 통신.
- **TCP/UDP 20000-20030**: 추가 동적 포트.

#### 서비스
- **NetVault Backup Service (nvpmgr)**
- **NetVault Inter-Process Communications Manager (nvcmgr)**
- **NetVault Network Manager (nvnmgr)**
- **NetVault Statistics Manager (nvstatsmngr)**
- **NetVault Console Service (nvconsolesvc)**
- **NetVault Device Manager (nvdevmgr)**

## 라이선스

이 프로젝트는 GNU General Public License v3.0에 따라 라이선스가 부여됩니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하십시오.

## 기여자

- pingu52
