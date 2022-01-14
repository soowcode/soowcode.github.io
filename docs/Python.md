# Python

<div style="text-align:center">
    <img src="../../img/happy.gif" alt="drawing" style="width:45%; height:45%; "/> <br>
    Yeeyyyy!!!!! Un autre language &#128512;!! <br>
</div>
<br>
Python est un langage de programmation multiplateforme que nous pouvons donc exécuter sur plusieurs plates-formes telles que Windows, macOS, Linux. Il est totalement gratuit et open source.

** &#128556; Ohh mince j'ai Lunix!**  
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

## Les bases

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

> > > x = 45

                //addition

> > > x + 2
> > > 47

                //soustraction

> > > x - 2
> > > 43
> > > y = 2.5
> > > x - y
> > > 42.5

                //multiplication

> > > x \* 3
> > > 135

> > > (x \* 10) + y
> > > 452.5

                //division

> > > 5 // 4
> > > 1
> > > 8 // 4
> > > 2

                //le modulo

> > > 5 % 4
> > > 1
> > > 8 % 4
> > > 0

```
Les operations sur  les chaines de caractères
```

> > > chaine = "Coucou"
> > > chaine
> > > 'Coucou'
> > > chaine + " Fatou"
> > > 'Coucou Fatou'
> > > chaine \* 3
> > > 'CoucouCoucouCoucou'

```
<h2 style="color:#662f30">
Bon à partir d'ici, je vous partage mon experience avec python.</h2>

<div style="text-align:center">

    <img src="../../img/thinking.gif" alt="drawing" style="width:50%; height:300px"/>
</div>

## List comprehension
La compréhension de liste "List comprehension" vous permet de créer une liste basée sur les valeurs d'une liste existante.


**Synthaxe:**

```

newlist = [expression for item in list]

```
Exemple:
```

> > > nouvelle_list = [ letter for letter in 'Coucou' ]
> > > print( nouvelle_list)
> > > ['C', 'o', 'u', 'c', 'o', 'u']

```

## Loops
```

> > > i = 0
> > > while i < 5:
> > > ... print("hi")
> > > ... i += 1

```

<img src="../../img/while.png" alt="drawing" style="width:50%; height:50%"/>

Pour plus d'informations je vous invite de voir le site de <a  style="text-decoration: underline; color:black" href="https://www.pythoncheatsheet.org/"> python suivant</a>
## Functions
L'une des parties les plus importantes ce sont les fonctions, en gros en python tout est fonctions.
Une fonction se comporte comme: donne moi à manger ceci et je te recrache celà.
https://www.programiz.com/python-programming/function-argument
synthaxe:

def function_name([params[type],..,..])
## Classes
### Design pattern
## Working with Dates
## Working with Files
## Fetching Data from Internet
## Modules
## Décorateurs

```
