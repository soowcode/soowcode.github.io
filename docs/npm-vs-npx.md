## NPX vs NPM 

### NPX : Un exécuteur de packages npm

NPX est un outil permettant d'exécuter des packages Node.js et nécessite NPM version 5.2+ pour fonctionner. 

Lorsqu'une commande est lancée via NPX, il vérifie si cette commande existe dans le chemin d'accès ($PATH) ou dans les binaires du projet local, puis l'exécute.

```
npx mes-packages
```

Un avantage majeur de NPX est sa capacité à exécuter un package qui n'a pas été préalablement installé.

```
npx create-react-app my-app
```

### NPM :

Lorsque vous lancez `npm install mes-packages`, cela installe un paquet localement dans un projet spécifique. Imaginons maintenant que vous vouliez exécuter ce package depuis la ligne de commande de Node.js. Vous devriez spécifier le chemin du package de la manière suivante :

```
./node_modules/.bin/mes-packages
```

Pour en savoir plus sur NPM, consultez [la documentation NPM](https://docs.npmjs.com/about-npm).
