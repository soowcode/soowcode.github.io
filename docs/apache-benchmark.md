# ApacheBench
<div style="text-align:center">
<img src="../../img/apache-bench.png" alt="drawing" style="width:100; height:100px; margin-bottom:5% "/>

</div>


ApacheBench (ab est le vrai nom du fichier programme ) est un programme informatique en ligne de commande à thread unique utilisé pour l'analyse comparative (mesure des performances) des serveurs Web HTTP .

**Un peu d'histoire?**  
À l'origine, il était utilisé pour tester le serveur HTTP Apache , mais il est suffisamment générique pour tester n'importe quel serveur Web prenant en charge les versions de protocole HTTP/1.0 ou HTTP/1.1.  
L'**ab** outil est écrit en C et il est fourni avec la distribution source standard d'Apache, et comme le serveur Web Apache lui-même, il s'agit d'un logiciel libre, open source et distribué selon les termes de la licence Apache <a  href="https://en.wikipedia.org/wiki/ApacheBench">source</a>.

## Fonctionnement
Dans cette session nous ne parlerons que de certaines fonctionnalités, comment installer ab, un exemple d'utilisation et pourquoi faire une telle tâche.
### Fonctionnalités d'ApacheBench

- Un logiciel open source, donc disponible gratuitement.
- Un simple programme informatique en ligne de commande.
- Un tester de charge et de performance uniquement pour le serveur Web - HTTP ou HTTPS.
- Un outil indépendant de votre plate-forme. On peut l'uitliser sur Linux, sur Windows ou MacOs.

### Installation
Pour installer apache2-utils tapez la commande

```
sudo apt-get install apache2-utils
```

Notez que cela n'a pas besoin d'être installé sur le même serveur sur lequel vous souhaitez exécuter le test. Vous pouvez l'installer même sur votre bureau local (pour moi Ubuntu) et exécuter le test vers une URL spécifique
### Utilisation

```
ab -c 100 -n 500 -r https://mon-site.com/
```

**-c:** <i> le nombre de requêtes multiples à exécuter à la fois.</i>

**-n:** <i> le nombre de requêtes à effectuer pour la session de benchmarking.</i>

**-r:** <i> signifie ne quitte pas en cas d'erreur de réception de socket.</i>

Dans notre cas, la requête fera simultanément 100 requêtes/seconde et en fera au total 500.

### Pourquoi stresser son site?

Drôle hein ? Mais je suis sérieuse il faut simuler un grand nombre de flux d'utilisation de son site pour éviter que son site ne se plante.

Pour cela vous pouvez utiliser l'outil de test des performances du serveur HTTP Apache

Pour plus d'info <a href="https://httpd.apache.org/docs/2.4/programs/ab.html">apache-bench-docs</a>

## Conclusion
<div style="text-align:center">
<img src="../../img/happy.gif" alt="drawing" style="width:100; height:100px; margin-bottom:5% "/>

</div>
Nous arrivons à la fin de notre ApacheBench tuto 😁, je vous invite donc de voir <a style="text-decoration: underline; color:black" href=" https://ourcodeworld.com/articles/read/957/how-to-run-a-stress-test-to-your-apache-server-in-ubuntu-18-04">ce article.</a>  
Car, ceci n'est qu'une introduction à ApacheBench, pour plus d'informations visitez le site <a style="text-decoration: underline; color:black"  href="https://httpd.apache.org/docs/2.4/programs/ab.html"> ApacheBench </a>.

