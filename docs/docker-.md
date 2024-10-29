---
title: Docker
position: 1
---
# Introduction
 
Un peu d'explication :)
<div style="text-align:center">
<img src="../../img/docker.gif" alt="drawing" style="width:45%; height:45%"/>
</div>
Docker est une plate-forme en tant que produits de service (Paas i.e platforms as a service) qui utilisent la visualisation au niveau du système d'exploitation pour fournir des logiciels dans des packages appelés conteneurs.  
🤔 Bon d'autre part j'ai envie de dire que c'est comme un bateau qui contient beaucoup de conteneurs, ils sont sur le même beateau, mais chacun est isolé des autres selon son contenu.  
Ils peuvent communiquer entre eux par des canaux bien définis (le réseau => network).  
Ils appartient au même noyau de système d'exploitation et utilisent donc moins de ressources qu'une machine virtuelle.  
Docker est un système d'exploitation pour conteneurs.


<div style="text-align:center">
<i style="color:green; font-size:30px">Pourquoi utiliser Docker?  </i>
<img src="../../img/thinking-girls.gif" alt="drawing" style="width:45%; height:45%"/>

</div>
 
😲 **Tu nous le demande? bon bahh on ne sait pas**  

Docker permet:

- D'envoyer du code plus rapidement
- De standardiser les opérations des applications
- De migrer aisément du code 
- De faire des économies en améliorant l'utilisation des ressources.

Avec Docker, vous obtenez un objet unique que vous pouvez exécuter n'importe où de manière fiable.  
Grâce à sa syntaxe simple, Docker vous confère le contrôle total.  
Comme Docker est adopté à grande échelle, il s'accompagne d'un solide écosystème d'outils et d'applications standard.


## Conteneurs

- C'est une image en exécution.
- Il permet de regroupe le code et toutes ses dépendances 
- Il facilite l'exécution rapide et de manière fiable d'un environnement informatique à un autre  des applications. 
- Il possède la copie du système de fichiers de l'image, ainsi que la capacité de lancer des processus.

En gros, c'est un OS, avec lequel vous pouvez interagir.
### Exemple

```bash
docker run --name test -it debian
```
Pour savoir quels sont les actions qu'on peut effectuer lancez `docker run --help`.  
[Plus d'info sur les conteneurs](https://www.digitalocean.com/community/tutorials/how-to-use-docker-exec-to-run-commands-in-a-docker-container)
### Docker container --help


<div style="text-align:center">
<img src="../../img/docker_container.png" alt="drawing" style="margin-bottom:3%" />
</div>

## Images
- C'est un ensemble d'instructions pour créer un conteneur pouvant s'exécuter.  
- Elle représente le système de fichiers, sans les processus...  
- C'est un ensemble de couche(layers).
- Les images sont également le point de départ pour quiconque utilise Docker pour la première fois.
### Exemple
```bash
docker pull debian
```
### Docker image --help

<div style="text-align:center">
<img src="../../img/docker-image.png" alt="drawing" style="margin-bottom:3%"/>
</div>

[Plus d'info sur le site de Docker](https://docs.docker.com/engine/reference/commandline/pull/)

### Une petite image?
Alpine Linux est une distribution Linux.  
Qui est legère et est parfaite pour les petits système d'exploitation l'image ne fait que 5 Mo.

```
docker pull alpine:3.15.0
```

## Volumes

<div style="text-align:center">
<img src="../../img/volumes.png" alt="drawing" style="margin-bottom:3%"/>
</div>

OHHHH 🤯 on a entendu dire que c'est casse tête? Mais non c'est un sujet simple je vous explique:   
C'est la manière la plus sûre de créer et d'utiliser les données d'un conteneur.
### Fonctionnement
C'est un endroit qu'on crée pour préserver les données générées par le conteneur en cours d'exécution. Ils sont stockés sur l'hôte, indépendamment du cycle de vie du conteneur. Cela permet aux utilisateurs de sauvegarder facilement des données et de partager des systèmes de fichiers entre les conteneurs.

### Avantages
- Ils sont plus faciles à sauvegarder ou à migrer.
z- La gestion est facile à l'aide des commandes Docker CLI ou de l'API Docker.
- Ils fonctionnent sur les conteneurs Linux et Windows.
- Ils peuvent être partagés de manière plus sûre entre plusieurs conteneurs.
- Les pilotes de volume vous permettent de stocker des volumes sur des hôtes distants ou des fournisseurs de cloud, de chiffrer le contenu des volumes ou d'ajouter d'autres fonctionnalités.
- Les nouveaux volumes peuvent avoir leur contenu pré-rempli par un conteneur.

### Créeation d'un volume

```
docker volume create [OPTIONS] [VOLUME]
```
On peut aussi créer un volume avec la commande `docker run --mount source=myvol2,target=/app` ou `docker run  -v myvol2:/app`   
Pour savoir tout ce qu'on peut faire avec les volumes taper la commande ` docker volume --help`

<div style="text-align:center">
<img src="../../img/docker-volume-help.png" alt="drawing" style="margin-bottom:3%"/>
</div>


### Dockerfile

Ce fichier permet de créer une image custom, au lieu de le faire en ligne de commande, on peut le faire dans un fichier dont la maintenance est facile.

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

**Exemple de docker-compose**

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
            <li><strong> docker run image :</strong> crée le container et le lance i.e. **docker run postgres:alpine3.16** </li>
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
Ce tutoriel arrive à sa fin, pour plus d'informations, je vous recommande la documentation de Docker dont le lien est en bas dans les ressources. Ou sur les tutoriels techniques de SoowCode.

**Sources**:   
<a style="text-decoration: underline; color:black"  href="https://dockerlabs.collabnix.com/docker/cheatsheet/">Docker cheat sheet</a>  
<a style="text-decoration: underline; color:black"  href="
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04">Docker </a>
