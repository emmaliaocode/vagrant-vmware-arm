# Deploy Ubuntu VMs with Vagrant and Vmware on macOS

## 1. Environment
- MacBook Pro M1 2020 (8 Core, 16G Memory)
- Operation System: macOS Monterey
## 2. Prerequisites
- [Vagrant v2.3.4](https://developer.hashicorp.com/vagrant/downloads) and [Vagrant Plugin & Utility](https://developer.hashicorp.com/vagrant/docs/providers/vmware/installation)
- [VMware Fusion Player v13.0](https://customerconnect.vmware.com/en/evalcenter?p=fusion-player-personal-13)
## 3. Directory Structure
```
.
├── README.md
├── Vagrantfile
└── ubuntu
    ├── collect-host-ip.sh
    └── vagrant
        ├── setup-hosts.sh
        └── update-dns.sh

2 directories, 5 files
```