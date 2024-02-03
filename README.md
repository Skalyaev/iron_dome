# Iron Dome

*Better safe than sorry.*

In this part, you will develop a specific tool that will detect anomalous activity by monitoring different operating system parameters.
Unfortunately, there is no totally effective way to prevent ransomware attack, but after completing this project you will be able to understand the weak points of a computer system regarding these malware infections.

## Checklist
- [x] Detect disk read abuse
- [x] Detect intensive use of cryptographic activity
- [x] Detect changes in the entropy of the files
- [x] Logs
- [x] Backup system
- [x] Never exceed 100 MB of memory in use.
- [x] No leak
- [x] No crash

## Usage
```sh
sudo apt update
sudo apt install git make docker.io
git clone git@github.com:Skalyaeve/iron_dome.git
cd iron_dome
sudo make docker
sudo make docker-exec
```
```sh
irondome/IronDome
stockholm/stockholm
./openssl_cmd.sh
less /var/log/IronDome.log
```
```sh
sudo make docker stop
sudo make docker clean
```
