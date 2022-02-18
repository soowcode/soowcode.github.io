# Cockpit

<div style="text-align:center">
<img src="../../img/cockpit.png" alt="drawing" style="width:30%; height:30%"/>
</div>
## Introduction
Celui qui vous aide à piloter vos machines sans avoir à connaitre toutes les commandes Lunix.
Vous avez envie d'administrer vos machines sans connaitre de commandes Lunix, vous avez envie de vous amuser sur un interface web sans passer par un terminal sur la machine ou encore avez envie d'utiliser un terminal sur votre navigateur sans revenir sur votre terminal en local? Alors utiliser cockpit!l.
## Focntionnement
Cockpit est une interface graphique web pour serveurs, destinée à tous(debutants, confirmé et administrateur systeme sous Lunix), notamment ceux qui sont :
Grâce à Cockpit toute une équipe d'administrateurs peut gérer un système de la manière la plus simple.
Avec cockpit vous pouvez verifier: vos containers, votre CPU, votre RAM, disque dur,...
### Installation sur Ubuntu
L'installation est l'une des plus simple il suffit de taper la commande

```
sudo apt install cockpit
```

### Démarrage de cockpit

Une fois l'installation terminée lancer votre cockpit avec la commande

```
sudo service cockpit start
```

<div style="text-align:center">
    <img src="../../img/first_page.png" alt="drawing" />
    <p style="color:grey"> interface de cockpit</p>
</div>
### Vérification du status

Une fois lancé vous pouvez vérifier son status avec la command:

```
sudo service cockpit status
```

### Docker et cockpit

Vous avez la possibilité de vérifier que vos containers sont entrains de tourner ou sont down.

Il se comporte comme **portainer** mais en plus avancé car il contient des graphes et beacoups d'autres outils.

Pour cela installer sur votre machine le docker-cockpit.

```
sudo apt-get -y install cockpit-docker

```

Redemarrer le socket docker pour appliquer les changements

```
sudo systemctl restart cockpit.socket
```
<div style="text-align:center">
    <img src="../../img/container.png" alt="drawing" />
    <p style="color:grey"> interface de cockpit</p>
</div>
### Cockpit et metrics

Lecture et diffusion de données de métriques.

Les métriques concernant le système peuvent être extraites de plusieurs sources à l'aide de cockpit.metrics(). On peut exploiter les données des metrics avec les fonctions cockpit.series() et cockpit.grid().

```
metrics = cockpit.metrics(intervalle, options, cache)
```

Pour plus d'informations, je vous invite à visitez le site oficiel de <a style="text-decoration: underline; color:black" href="https://cockpit-project.org/guide/latest/cockpit-metrics.html"> cockpit</a>

## Conclusion

Vous pouvez désormais gérer facilement les conteneurs Docker à partir de votre navigateur Web avec une interface facile à utiliser !

Vous pouvez également monitorer votre machine avec cockpit sans souci !

**Sources:**  
<a href="https://cockpit-project.org/guide/latest/development"> Site officielle de cockpit</a>  
<a href="https://www.hostwinds.com/tutorials/installing-and-using-cockpit-docker-linux-vps"> Hostwinds</a>  
<a href="http://redhatgov.io/workshops/security_containers/images/cockpit.png">logo</a>