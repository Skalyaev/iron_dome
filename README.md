# <p align="center">iron-dome</p>
> *Introduction à la détection et à la surveillance des activités malveillantes. Ce projet est optionnel.*
>
> *Il s'agit de la deuxième partie de la section sur les logiciels malveillants.*
>
> *Dans cette partie, vous développerez un outil spécifique capable de détecter les activités anormales en surveillant différents paramètres du système d'exploitation.*
>
> *Malheureusement, il n'existe aucun moyen totalement efficace de prévenir les attaques par rançongiciel, mais en réalisant ce projet, vous serez en mesure de comprendre les points faibles d'un système informatique face à ces infections par des logiciels malveillants.*

## Checklist
- [x] Detect disk read abuse
- [x] Detect intensive use of cryptographic activity
- [x] Detect changes in the entropy of the files
- [x] Logs
- [x] Backup system
- [x] Never exceed 100 MB of memory in use
- [x] No leak
- [x] No crash

## Install
```bash
sudo apt update -y
sudo apt install -y make
sudo apt install -y docker.io
```
```bash
link=Skalyaeve/iron_dome
name=iron_dome

git clone https://github.com/$link.git $name
cd $name && sudo make docker
```

## Usage
```bash
sudo make docker-exec
```
```bash
irondome/IronDome
stockholm/stockholm
./openssl_cmd.sh
# enter a password
less /var/log/IronDome.log
```
```bash
sudo make docker-stop
sudo make docker-clean
```

