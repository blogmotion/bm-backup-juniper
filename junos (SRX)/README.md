bm-backup-juniper (blogmotion backup juniper)

Sauvegarde automatisée de configurations Juniper (screenos, junOS)
===

> english version below

### Description
Script de sauvegarde pour Juniper sous Junos OS (gamme SRX par exemple). Fichiers nécessaires :

- pscp.exe (32 ou 64 bit)
- puttygen.exe (génération des clés)

Ces binaires sont téléchargeables sur le [site de PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html).

### 🚦 Configuration minimale
Nécessite un compte "super-user" sur l'équipement Juniper, avec une clé SSH associée.
Pensez à bien compléter les variables et vérifier le chemin de sortie (DSTDIR).

### 🚀 Utilisation
Lancez le script à la main avant de le programmer en planificateur de tâches Windows afin de vérifier son fonctionnement.

### 🇺🇸 English version

### [EN] Description 
Juniper backup script for Junos OS (SRX range for example). Necessary files :

- pscp.exe (32 or 64 bit)
- puttygen.exe (key generation)

These binaries can be downloaded from [PuTTY's website] (https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html).

### [EN] 🚦 Requirements 
Requires a "super-user" account on Juniper equipment, with an associated SSH key.
Remember to complete the variables and check the output path (DSTDIR).

### [EN] 🚀 Usage 
Run the script manually before programming it in the Windows task scheduler to check its operation.