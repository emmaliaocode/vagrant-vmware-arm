# Deploy Ubuntu VMs with Vagrant and VMware on macOS ARM64
This repo aims to provision Ubuntu virtual machines (VMs) with [Vagrant](https://developer.hashicorp.com/vagrant) and [VMware Fusion](https://www.vmware.com/products/fusion.html) on macOS ARM64. The Vagrantfile and set-up scripts used in this repo are mainly forked from [kodekloudhub/certified-kubernetes-administrator-course](https://github.com/kodekloudhub/certified-kubernetes-administrator-course) and modified to make use of the macOS ARM64. As the scenario of provisioning VMs in this repo is to practice deploying a Kubernetes cluster, the hostnames of each VM are named based on the perspective of Kubernetes architecture.
#### Why VMware instead of VirtualBox?
Vagrant supports several providers including VirtualBox, VMware, and Hyper-V. VirtualBox is the default provider for Vagrant. The reason for applying VMware instead of VirtualBox is that: VirtualBox for macOS ARM64 is still the beta feature and might not be stable to date.
#### Using the Ubuntu-ARM64 Vagrant Box
Since VMware Fusion only supports running ARM on ARM, the Vagrant Box used in this repo is [`starboard/ubuntu-arm64-20.04.5`](https://app.vagrantup.com/starboard/boxes/ubuntu-arm64-20.04.5) which is a Ubuntu-ARM64 box, instead of x86.
## 1. Environment
- MacBook Pro M1 2020 (8 Cores, 16G Memory)
- Operation System: macOS Monterey
## 2. Prerequisites
- [Vagrant v2.3.4](https://developer.hashicorp.com/vagrant/downloads) as well as [Plugin](https://developer.hashicorp.com/vagrant/docs/providers/vmware/installation) and [Utility](https://developer.hashicorp.com/vagrant/docs/providers/vmware/vagrant-vmware-utility)
- [VMware Fusion Player v13.0 (Free Personal Use License)](https://customerconnect.vmware.com/en/evalcenter?p=fusion-player-personal-13)
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
## 4. Usage
After cloning this repo, provision the VMs with the following commands.
```
cd vagrant-vmware-macos-arm
vagrant status
vagrant up
```
Once the VMs are ready, excute `collect-host-ip.sh` to collect the IP addresses of each VM. It will generate a file named `host-ip` under `ubuntu/`.
```
sh ubuntu/collect-host-ip.sh
```
SSH to the VMs.
```
vagrant ssh [hostname]
```