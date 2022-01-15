# Docker-MySQL

<img src="../../img/docker-mysql.png" alt="drawing" />

## <p style="visibility: hidden;">Introduction</p>
  <li><i style=" margin-left:5%; font-weight:bold; font-size:28px">MySQL </i>
      <ul></br>
          <li>est un système de gestion de base de données relationnelle</li>
          <li>est open source et gratuit</li>
          <li>est idéal pour les petites et les grandes applications</li>
          <li>est très rapide, fiable, évolutif et facile à utiliser</li>
          <li>est multiplateforme et conforme à la norme ANSI SQL</li>
          <li>a été publié pour la première fois en 1995</li>
          <li>est développé, distribué et pris en charge par Oracle Corporation</li>
          <li>porte le nom de la fille du co-fondateur Monty Widenius : My</li>
      </ul>
  </li>

## <p style="visibility: hidden;">Fonctionnement</p>
### Docker-compose

Pour faire tourner une database MySQL dans un conteneur nous allons creer un docker-compose.yml ou utiliser un docker run .

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

Ne vous découragerez pas je vous explique

- Le "docker exec" exécute une commande dans un conteneur en cours d'exécution.
- Le "-it" signifie fais le en mode interactive
- Le "db-mysql" est nom du contenaire
- Le "bash" à la fin signifie qu'on veut exécuter "db-mysql" en mode bash

> Sachez que si on utilisait "docker-compose exec" on allait utiliser le nom du service, car docker-compose manipule les services tandisque docker manipule les containers.

Mais, perso j'ai choisi d'installer sur vscode l'extension database qui me permet de me connecter et manipuler MySQL avec une jolie interface <a style="text-decoration: underline; color:black" href="https://marketplace.visualstudio.com/items?itemName=bajdzis.vscode-database">plus d'info sur l'extension database.</a>

<div style="text-align:center">
<img src="../../img/mysql_r.png" alt="drawing" />
<p>Database extension après connexion à la base mysql</p>
</div>

No kidding 😂 !! je ne me suis pas arreté la-bas.

J'ai donc rajouté une interface web en utilisant adminer. Documentation juste 👉 <a style="text-decoration: underline; color:black" href="https://www.adminer.org/"> ici</a>.  
Sinon voici un exemple de docker-compose de adminer.

```yml
adminer:
  depends_on:
    - mysql
  image: adminer
  restart: always
  ports:
    - 8080:8080
```

**NB:** on rajoute "depends*on:" car on veut qu'il attende que MySQL finisse de démarrer avant de se lancer.  
Vous trouverez plus d'info sur <a style="text-decoration: underline; color:black" href="https://hub.docker.com/*/mysql?tab=description"> docker hub</a>.

### Docker run

ALors j'aime bien le docker-compose car ça nous évite de rappeler nos commandes oubien de recopier tout le temps la commande. C'est aussi un moyen rapide de faire des modifications.

Mais c'est pas la seule methode à utiliser pour initialiser un container MySQL, il ya la simple commande `docker run`

```
docker run --name=container_name  --restart on-failure -d image_name:tag
```

En remplaçant les lettres par leurs valeurs on obtient un truc pareil:

```
docker run -itd --name db-mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root_assword -e MYSQL_USER=mon_user -e   MYSQL_PASSWORD=user_password -e MYSQL_DATABASE=database_name  mysql:5.7.36
```

### Variables d'environnement

On ne va surtout pas tous les voir ici mais je vous invite à régarder <a href="https://dev.mysql.com/doc/refman/5.7/en/environment-variables.html" style="text-decoration: underline; color:black" > ici</a> où vous en trouverez beaucoup.  
Alors ceux qu'on a utilisé sont assez claire, mais pour juste un peu parler je dirais que chaque server ou base de donnée bref chaque image docker peut contenir des variables d'environnements.  
On peut donc trouver dans le docker hub de l'image oubien sur le site officiel de la techno quel environnement on en a besoin.  
On le spécifie dans docker run avec " -e, --env, --env-file " et dans un docker-compose par "environment"

<h6> Exemple de dokcer run:</h6>

```
 docker run -e MYVAR1 --env MYVAR2=foo --env-file ./env.list ubuntu bash

```

<h6> Exemple de dokcer-compose:</h6>

```yml
environment:
  - MYSQL_ROOT_PASSWORD: root_assword
  - MYSQL_USER: mon_user
  - MYSQL_PASSWORD: user_password
  - MYSQL_DATABASE: database_name

```

## Conclusion

Si vous ne comprenez rien je vous comprendrais 😁, je vous invite donc de voir <a style="text-decoration: underline; color:black" href="https://docs.docker.com/compose/gettingstarted/">ce article sur docker-compose.</a>  
Car, ceci n'est qu'une introduction au MySQL en utilisant les containers, pour plus d'informations visitez le site <a style="text-decoration: underline; color:black"  href="https://hub.docker.com/_/mysql?tab=description"> docker-hub </a> ou sur le site de MySQL Server <a style="text-decoration: underline; color:black" href="https://www.mysql.com/">www.mysql.com </a>.

