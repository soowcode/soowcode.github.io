# Python installation

<div style="text-align:center">
    <img src="../../img/happy.gif" alt="drawing" style="width:45%; height:45%; "/> <br>
    Yeeyyyy!!!!! Un autre language &#128512;!! <br>
</div>
<br>
Python est un langage de programmation multiplateforme que nous pouvons donc exécuter sur plusieurs plates-formes telles que Windows, macOS, Linux. Il est totalement gratuit et open source.

** &#128556; Oh mince j'ai Linux !**  
Si vous avez Linux ou Mac vous verrez qu'il est déjà installé sauf que la plupart des versions installées sont obsolètes ainsi, c'est à vous d'installer la nouvelle version ou la version de travail  qu'il vous faut.

**`Dans ce tutoriel nous travaillerons exclusivement sur Ubuntu `**

### Installation

Je vous mets le lien de la documentation pour le téléchargement ou l'obtention du package.

Téléchargez la [ dernière version](https://www.python.org/) de Python.  
Plus spécifiquement pour Ubuntu :

Mis à jour des packages et installé les prérequis :

```
sudo apt update
sudo apt install software-properties-common
```

Ajoutez le PPA deadsnakes à la liste des sources de votre système ([c'est quoi un PPA?](https://doc.ubuntu-fr.org/ppa)):

```
sudo add-apt-repository ppa:deadsnakes/ppa
```

Maintenant installons python 3.9 :

```
sudo apt install python3.9
```

Vérifions si python s'est bien installé :

```
python3.9 --version
```

## Test d'installation

En haut nous avons installé python3.9, maintenant écrivons notre premier programme en python.

```python
print("Hello world !")
Nom = "Barry"
print(Nom)
age = 3
taille = 2.01
liste_nombre = [1,2,3,4]

Nom , age, taille = "Barry", 3, 2.01

print(Nom)
```
<div style="text-align:center">
<img src="../../img/variables.gif" alt="drawing" style="width:45%; height:45%"/>
</div>

## Conclusion
<div style="text-align:center">
<img src="../../img/done.gif" alt="drawing" style="width:30%; height:30%"/>  
</div>
Dans ce tutoriel, nous avons vu comment installer python sur Linux, dans les prochains tutos, nous verrons quelques notions en python, telle que les fonctions, les listes compréhension, les classes, les modules, les tests unitaires, tests end-to-ends and so on...
