# Docker-MySQL

<img src="../../img/docker-mysql.png" alt="drawing" />

## Qu'est-ce que MySQL ?

- MySQL est un système de gestion de base de données relationnelle
- MySQL est open source et gratuit
- MySQL est idéal pour les petites et les grandes applications
- MySQL est très rapide, fiable, évolutif et facile à utiliser
- MySQL est multiplateforme et conforme à la norme ANSI SQL
- MySQL a été publié pour la première fois en 1995
- MySQL est développé, distribué et pris en charge par Oracle Corporation
- MySQL porte le nom de la fille du co-fondateur Monty Widenius : My

## Utiliser docker pour installer et utiliser MySQL

Pour faire tourner une database MySQL dans un conteneur nous allons creer un docker-compose.yml

### Docker-compose

<div style="text-align:center">
<img src="../../img/thinking-boy.gif" alt="drawing" style="width:30%; height:30%"/>
<p> Hummm, comment le faire???</p>
</div>
Ahhh mais c'est simple, je crée un fichier "docker compose.Yml " dans mon folder et je mets ceci dedans.

```yml
version: "3.9"
services:
  mysql:
    image: mysql:5.7.36
    hostname: db-mysql
    container_name: db-mysql
    #replace environment section
    environment:
      #celui-ci est le seul obligatoire
      - MYSQL_ROOT_PASSWORD: root_assword
      - MYSQL_USER: mon_user
      - MYSQL_PASSWORD: user_password
      - MYSQL_DATABASE: database_name
    #expose le port de MySQL sinon il ne sera pas vu par la machine on appelle ceci le biding
    ports:
      - 3306:3306
```

Ainsi, en ligne de commande je peux accéder à MySQL en tapant:

```
  docker exec -it db-mysql bash
```

Ne vous decouragerez pas je vous explique

- Le "docker exec" exécute une commande dans un conteneur en cours d'exécution.
- Le "-it" signifie mode interactive
- Le "bash" à la fin signifie qu'on veut exécuter "db-mysql" en mode bash
- Le "db-mysql" est nom du contenaire

> Sachez que si on utilisait "docker-compose exec" on allait utiliser le nom du service, car docker-compose manipule les services tandisque docker manipule les containers.

Mais perso j'ai choisi d'installer sur vscode l'extension database qui me permet de me connecter à ma base avec une jolie interface. <a style="text-decoration: underline; color:black" href="https://marketplace.visualstudio.com/items?itemName=bajdzis.vscode-database">PLus d'info sur l'extension database.</a>

<div style="text-align:center">
<img src="../../img/mysql_r.png" alt="drawing" />
<p>Database extension après connexion à la base mysql</p>
</div>

No kidding 😂 !! je ne me suis pas arreté la-bas.

J'ai donc rajouté une interface web en utilisant adminer. C'est juste 👉 <a style="text-decoration: underline; color:black" href="https://www.adminer.org/"> ici</a>  
Sinon voici le docker-compose de adminer que vous trouverez sur <a style="text-decoration: underline; color:black" href="https://hub.docker.com/_/mysql?tab=description"> docker hub</a>

```yml
adminer:
  depends_on:
    - mysql
  image: adminer
  restart: always
  ports:
    - 8080:8080
```

**NB:**  on rajoute "depends_on:" car on veut qu'il attende que MySQL finisse de demarrer avant de se lancer.

## Conclusion

Si vous ne comprenez rien je vous comprendrais 😁, je vous invite donc de voir <a style="text-decoration: underline; color:black" href="https://docs.docker.com/compose/gettingstarted/">ce article sur docker-compose.</a>  
Car, ceci n'est qu'une introduction au MySQL en utilisant les containers, pour plus d'informations visitez le site <a style="text-decoration: underline; color:black"  href="https://hub.docker.com/_/mysql?tab=description"> docker-hub </a> ou sur le site de MySQL Server <a style="text-decoration: underline; color:black" href="https://www.mysql.com/">www.mysql.com </a>.
