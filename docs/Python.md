# Python 

## Démarrer avec python
Un autre language Python!!
C'est un langage de programmation multiplateforme que nous pouvons donc exécuter sur plusieurs plates-formes telles que Windows, macOS, Linux et a même été porté sur les machines virtuelles. Il est totalement gratuit et open source.

**Ohh mince j'ai Lunix!**  
Si vous avez Lunix ou Mac vous verrez qu'il est déjà installé sauf que la plupart des versions installées sont obsolètes donc c'est à vous d'installer la nouvelle version ou la version de travaille qu'il vous faut.

**`Dans ce tutoriel nous travaillerons exclusivement sur Ubuntu `**
### Installation
Je vous mets le lien de la documentation pour le téléchargement ou l'obtention du package.

Téléchargez la [ dernière version](https://www.python.org/) de Python.  
Plus specifiquement pour Ubuntu:

Mis à jour des paquages et installé les prérequis:
```
sudo apt update
sudo apt install software-properties-common
```
Ajoutez le PPA deadsnakes à la liste des sources de votre système ([c'est quoi un PPA?](https://doc.ubuntu-fr.org/ppa)):
```
sudo add-apt-repository ppa:deadsnakes/ppa
```
Maintenant installons python 3.9: 
```
sudo apt install python3.9
```
Vérifions si python s'est bien installé:
```
python3.9 --version
```
## Mon premier programme
En haut nous avons installé python3.9, maintenant écrivons notre premier programme en python.
![script](../../img/hello_world.gif?raw=true "Title")

## The Basics
### Les Variables
Ehh bien figurez-vosu q'une variable est une place où on peut stoker des informations
Vous pouvez stoker tout ce que vous voulez
```
Nom = "Barry"
print(Nom)
age = 3
taille = 2.01
liste_nombre = [1,2,3,4]

Nom , age, taille = "Barry", 3, 2.01
```
<img src="../../img/variables.gif" alt="drawing" style="width:50%; height:300px"/>
## Operators
Bon les calculs c'est pas trop le truc de tout le monde. Tous les types de calculs sont faisable sur python.
```

>>> x = 45
    
                //addition
>>> x + 2
47
                //soustraction
>>> x - 2
43
>>> y = 2.5
>>> x - y
42.5

                //multiplication
>>> x * 3
135

>>> (x * 10) + y
452.5

                //division
>>> 5 // 4
1
>>> 8 // 4
2
                //le modulo
>>> 5 % 4
1
>>> 8 % 4
0
```
Les operations sur  les chaines de caractères
```
>>> chaine = "Coucou"
>>> chaine
'Coucou'
>>> chaine + " Fatou"
'Coucou Fatou'
>>> chaine * 3
'CoucouCoucouCoucou'
```
<h2 style="color:red"> Bon à partir d'ici je vous partage mon experience avec python, c'est à dire ce que j'apprend et que j'ia appris depuis quelques mois.</h2>
<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets3.lottiefiles.com/packages/lf20_zJkn1j.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>

## List comprehension
La compréhension de liste "List comprehension" vous permet de créer une liste basée sur les valeurs d'une liste existante.


**Synthaxe:**

```
newlist = [expression for item in list]
``` 
Exemple:
```
>>> nouvelle_list = [ letter for letter in 'Coucou' ]
>>> print( nouvelle_list)
['C', 'o', 'u', 'c', 'o', 'u']

```

## Loops
## Functions
## Classes
### Design pattern
## Working with Dates
## Working with Files
## Fetching Data from Internet
## Modules
## Décorateurs

