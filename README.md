# <p align="center">iron-dome</p>
> *Introduction à la détection et à la surveillance des activités malveillantes. Ce projet est optionnel.*
>
> *Il s'agit de la deuxième partie de la section sur les logiciels malveillants.*
>
> *Dans cette partie, vous développerez un outil spécifique capable de détecter les activités anormales en surveillant différents paramètres du système d'exploitation.*
>
> *Malheureusement, il n'existe aucun moyen totalement efficace de prévenir les attaques par rançongiciel, mais en réalisant ce projet, vous serez en mesure de comprendre les points faibles d'un système informatique face à ces infections par des logiciels malveillants.*

## Checklist
- [x] Détection d'abus de lecture de disque
- [x] Détection d'utilisation intensive d'activité cryptographique
- [x] Détection des changements dans l'entropie des fichiers
- [x] Sauvegarde système
- [x] Utilisation de mémoire inférieure à 100 MB
- [x] Aucune fuite
- [x] Aucun crash

## Install
```bash
sudo apt update -y
sudo apt install -y make
sudo apt install -y docker.io
```
```bash
git clone https://github.com/Skalyaeve/iron_dome.git
cd iron_dome && sudo make docker
```

## Usage
```bash
sudo make docker-exec
```
```bash
irondome/IronDome infection
stockholm/stockholm
./openssl_cmd.sh
# enter a password
sleep 5
cat /var/log/IronDome.log
```
```bash
sudo make docker-stop
sudo make docker-clean
```
