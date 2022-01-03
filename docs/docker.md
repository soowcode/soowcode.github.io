# Docker
<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets2.lottiefiles.com/private_files/lf30_35uv2spq.json"  background="transparent"  speed="1"  style="width: 500px; height: 500px;"  loop  autoplay></lottie-player>
## Introduction 
🤔
Bahh je dirais que c'est comme le bateau qui contient beacoups de containers, ils sont sur le même beateau mais chacun est isolé des autres selon son contenu mais ils peuvent communiquer entre eux par des canaux bien définis(le réseau=> network). 

Un contenair docker est une image en execution. ohhh a new word 😵? Oui mais je vous l'explique, une image Docker représente le système de fichiers, sans les processus. ... Par contre un conteneur est l'exécution d'une image : il possède la copie du système de fichiers de l'image, ainsi que la capacité de lancer des processus. En gros, c'est un OS, avec lequel vous pouvez interagir

<i style="color:green; font-size:30px">Quoi encore? </i>
<img src="../../img/thinking-girls.gif" alt="drawing" style="width:50%; height:300px"/>

😲 ** Les volumes Docker: ** c'est un endroit qu'on crée pour préserver les données générées par le conteneur en cours d'exécution . Ils  sont stockés sur l'hôte, indépendamment du cycle de vie du conteneur. Cela permet aux utilisateurs de sauvegarder facilement des données et de partager des systèmes de fichiers entre les conteneurs

## Fonctionnement
### Installation
Je rappel que si vous avez Windows vous allez avoir besoin de ce tutorial <a href="https://docs.docker.com/desktop/windows/install/"> installe on windows</a> 
Pour Lunix:
Enlever l'ancienne version si existe
```
sudo apt-get remove docker docker-engine docker.io containerd runc 

```
Installe Docker:
```
 sudo apt-get update
 sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

```
Rajouter les GPG Key : 
```

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

```
si vous n'avez pas curl installé alors faite le
<a href="https://docs.docker.com/get-started/">ici</a>  

### Exemple d'image
Recupere une image de docker hub voici le liens où trouver <a href="https://www.docker.com/products/docker-hub"> la liste des images que vous pouvez recuperer les images</a>  
```
docker pull ubuntu:22.04
```
** Alpine **
Alpine Linux est une distribution Linux. Qui est legère et est parfait pour les petits système d'exploitation l'image ne fait que 5 Mo.
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
Bahhh ce fichier contient la manière dont on crée notre image, au lieu de le faire en ligne de commande on peut le faire dans un fichier dont la maintenance est facile.
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
Vous trouverez ici tout ce qu'il vous faut sur <a href="https://docs.docker.com/compose/gettingstarted/">  Docker-compose </a>
```
 sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

Appliquez les autorisations exécutables au binaire <a href="https://docs.docker.com/compose/install/"> ici la doc </a>

```
sudo chmod +x /usr/local/bin/docker-compose
```
#### Utilisation
Rappelons que ce fichier contient notre docker run commande

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
            <li><strong> docker ps :</strong> liste l'ensemble des container en cours d'execution</li>
            <li><strong> docker ps -a:</strong> liste tous containers</li>
            <li><strong> docker logs [-f] container:</strong> liste les logs </li>
        </ul>
    </li>
    <li><i style="color:green; font-weight:bold; font-size:18px">Interagir avec le conteneur et images</i>
        <ul>
            <li><strong> docker attach container :</strong> rejoint le container en cours mais si on l'arret il tue le container en cours</li>
            <li><strong> docker exec container args..:</strong> lance un container</li>
            <li><strong> docker images:</strong> liste toutes les images </li>
            <li><strong> docker pull repo[:tag]:</strong> pull une image du registry</li>
            <li><strong> docker push repo[:tag]:</strong> push une image du registry</li>
            <li><strong> docker images:</strong> liste toutes les images </li>
        </ul>
    </li>
</ol>

## Conclusion

<img src="../../img/done.gif" alt="drawing" style="width:50%; height:300px"/>


Nous arrivons à la fin de notre tutorial, pour plus d'informations je vous recommande la documentation du Docker dont j'ai mis le liens en bas dans les ressources. 

**Sources**:

<a href="https://dockerlabs.collabnix.com/docker/cheatsheet/">Docker cheat sheet</a>
