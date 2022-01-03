# Apache Benchmark
## Stresser son site

<img src="../../img/apache-bench.png" alt="drawing" style="width:100; height:100px"/>

Drôle hein ? Mais je suis sérieuse il faut simuler un grand flux d'utilisation de son site pour éviter que son site plante.

Pour cela vous pouvez utiliser l''outil de test des performances du serveur HTTP Apache

Pour plus d'info <a href="https://httpd.apache.org/docs/2.4/programs/ab.html">apache-bench-docs</a>

## Installez apache2-utils

```
sudo apt-get install apache2-utils
```

Notez que cela n'a pas besoin d'être installé sur le même serveur sur lequel vous souhaitez exécuter le test. Vous pouvez l'installer même sur votre bureau local Ubuntu et exécuter le test vers une URL spécifique

## Exécution d'un test de résistance

```
ab -c 100 -n 500 -r https://mon-site.com/
```

**-c:** <i> le nombre de requêtes multiples à exécuter à la fois.</i>

**-n:** <i> le nombre de requêtes à effectuer pour la session de benchmarking.</i>

**-r:** <i> signifie ne quitte pas en cas d'erreur de réception de socket.</i>

Dans notre cas, la requête fera simultanément 100 requêtes/seconde et en fera au total 500.

**source**:

<a href=" https://ourcodeworld.com/articles/read/957/how-to-run-a-stress-test-to-your-apache-server-in-ubuntu-18-04">plus d'informations</a>
