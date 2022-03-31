# Docker

<div style="text-align:center">
<img src="../../img/docker.gif" alt="drawing" style="width:45%; height:45%; margin-bottom:5% "/>

</div>
## Introduction

🤔 Bahh, je dirais que c'est comme le bateau qui contient beaucoup de containers, ils sont sur le même beateau, mais chacun est isolé des autres selon son contenu, mais ils peuvent communiquer entre eux par des canaux bien définis (le réseau => network).

Un conteneur docker est une image en exécution. ohhh a new Word 😵? Oui, mais je vous l'explique, une image Docker représente le système de fichiers, sans les processus...  
Par contre un conteneur est l'exécution d'une image : il possède la copie du système de fichiers de l'image, ainsi que la capacité de lancer des processus.

En gros, c'est un OS, avec lequel vous pouvez interagir.

<div style="text-align:center">
<i style="color:green; font-size:30px">Quoi encore? </i>
<img src="../../img/thinking-girls.gif" alt="drawing" style="width:45%; height:45%; margin-bottom:5% "/>

</div>
😲 ** Les volumes Docker: ** C'est un endroit qu'on crée pour préserver les données générées par le conteneur en cours d'exécution. Ils sont stockés sur l'hôte, indépendamment du cycle de vie du conteneur. Cela permet aux utilisateurs de sauvegarder facilement des données et de partager des systèmes de fichiers entre les conteneurs.

## Fonctionnement

### Installation

Je rappelle que si vous avez Windows, vous allez avoir besoin de ce tutoriel <a href="https://docs.docker.com/desktop/windows/install/"> installe sur Windows</a>

Pour Linux :  
Soyez sure que l'ancienne version si existe pas.

```
sudo apt-get remove docker docker-engine docker.io containerd runc

```

Ensuite, installez quelques packages prérequis qui permettent aptd'utiliser des packages via HTTPS

```
 sudo apt install apt-transport-https ca-certificates curl software-properties-common

```

Ajoutez ensuite la clé GPG du référentiel Docker officiel à votre système

```

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

```

si vous n'avez pas curl installé alors faite le
<a  href="https://docs.docker.com/get-started/">ici</a>

Ajoutez le dépôt Docker aux sources APT

```bash
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
```

Enfin, installez Docker

```
sudo apt install docker-ce
```

### Vérification d'installation

Vérifiez qu'il est en cours d'exécution

```

sudo systemctl status docker

```

### Exemple d'image

Récupération d'une image à partir de docker hub <a href="https://www.docker.com/products/docker-hub"> lien </a>

```
docker pull ubuntu:22.04
```

### Une image alpine?
Alpine Linux est une distribution Linux.  
Qui est legère et est parfait pour les petits système d'exploitation l'image ne fait que 5 Mo.

```
docker pull alpine:3.15.0
```

### Création d'un container

```
docker run [OPTIONS] IMAGE[:TAG|@DIGEST] [COMMAND] [ARG...]
```

Exemple:

```
docker run -it --pid=container:my-redis my_strace_docker_image bash
```

### Créeation d'un volume

```
docker volume create [OPTIONS] [VOLUME]
```

Exemple:

```
docker run -d \
  --name devtest \
  -v myvol2:/app \
  nginx:latest
```

### Dockerfile

Bahhh ce fichier contient la manière dont on crée notre image, au lieu de le faire en ligne de commande, on peut le faire dans un fichier dont la maintenance est facile.

```
FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask", "run"]
```

### Docker-compose

#### Installation

Vous trouverez ici tout ce qu'il vous faut sur <a style="text-decoration: underline; color:black" href="https://docs.docker.com/compose/gettingstarted/"> Docker-compose </a>

```
 sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

Appliquez les autorisations exécutables au binaire <a style="text-decoration: underline; color:black"  href="https://docs.docker.com/compose/install/"> ici la doc </a>

```
sudo chmod +x /usr/local/bin/docker-compose
```

#### Utilisation

Rappelons que ce fichier contient le docker run commande

** Exemple de docker-compose **

```
version: "3.9"
services:
  web:
    build: .
    ports:
      - "5000:5000"
  redis:
    image: "redis:alpine"
```

### Commandes utiles

<ol>
    <li><i style="color:green; font-weight:bold; font-size:18px">Container Management CLIs </i>
        <ul>
            <li><strong> docker run image :</strong> crée le container et le lance</li>
            <li><strong> docker start container:</strong> lance le container</li>
            <li><strong> docker stop container:</strong> arrête le container</li>
            <li><strong> docker kill container:</strong> tue le container</li>
            <li><strong> docker restart container:</strong> arrête le container et le lance</li>
            <li><strong> docker pause container:</strong> suspend le container</li>
            <li><strong> docker rm container:</strong> detruit le container</li>
        </ul>
    </li>
    <li><i style="color:green; font-weight:bold; font-size:18px">Inspection du conteneur</i>
        <ul>
            <li><strong> docker ps :</strong> lister l'ensemble des container en cours d'execution</li>
            <li><strong> docker ps -a:</strong> lister tous les containers</li>
            <li><strong> docker logs [-f] container:</strong> lister les logs </li>
        </ul>
    </li>
    <li><i style="color:green; font-weight:bold; font-size:18px">Interagir avec le conteneur et images</i>
        <ul>
            <li><strong> docker attach container :</strong> Rejoint le container en cours, mais s'il est arrêté, il tue le container en cours</li>
            <li><strong> docker exec container args..:</strong> lancer un container</li>
            <li><strong> docker images:</strong> lister toutes les images </li>
            <li><strong> docker pull repo[:tag]:</strong> puller une image du registry</li>
            <li><strong> docker push repo[:tag]:</strong> pusher une image du registry</li>
            <li><strong> docker images:</strong> lister toutes les images </li>
        </ul>
    </li>
</ol>

## Conclusion

<div style="text-align:center">
<img src="../../img/done.gif" alt="drawing" style="width:45%; height:45%; margin-bottom:5% "/>

</div>
Ce tutoriel arrive à sa fin, pour plus d'informations, je vous recommande la documentation du Docker dont le lien est en bas dans les ressources.

**Sources**:   
<a style="text-decoration: underline; color:black"  href="https://dockerlabs.collabnix.com/docker/cheatsheet/">Docker cheat sheet</a>  
<a style="text-decoration: underline; color:black"  href="
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04">Docker </a>
