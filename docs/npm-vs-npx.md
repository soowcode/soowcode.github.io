# NPM vs NPX:

## npx: un exécuteur de packages npm

NPX- Un outil pour exécuter des packages Node qui contient NPM version 5.2+

une commande lancer par NPX, NPX vérifiera si cette commande existe dans $PATH ou dans les binaires du projet local et l'exécutera.

```
npx mes-packages
```

Un autre avantage majeur de npxest la possibilité d'exécuter un package qui n'a pas été précédemment installé

```
npx create-react-app my-app
```

## NPM:

En lançant `npm install mes-packages` pourrait installer un paquet localement sur un certain projet

Supposons maintenant que vous souhaitez que NodeJS exécute ce package à partir de la ligne de commande

Il faudrait lancer la commande en précisant le chemin du package

```
./node_modules/.bin/mes-packages
```

<a href="https://docs.npmjs.com/about-npm"> plus d'information sur NPM</a>
