# Tests logiciels
## Introduction
>> « Tous les hommes sont mortels, or Socrate est un homme; donc Socrate est mortel » 


Chacun fait des erreurs dans cette vie, donc les développeurs aussi.

- Mal comprendre les exigences
- Manquer des points-virgules
- Manquer de compréhension sur un scénario de cas marginal  
Ainsi, pour gérer ces erreurs, les tests ont été mis en place.

## Différents types de tests.
Il y a plusieurs types de test.

- Tests unitaires
- Tests d'intégrations
- Tests end-to-end(bout en bout)  

## Fonctionnement

### 1-) Les tests unitaires :
Ce sont les tests permettant de vérifier le bon fonctionnement d'une partie précise d'un logiciel ou d'une portion d'un programme.

**Exemple:**  
Tester une fonction qui calcule la somme a et b
```python
#fonction somme
def somme(a,b):
    return a+b
# print True si 2+2=4 False sinon
print( somme(2,2)==4)
```
Donc notre fonciton marche bien.
<div style="text-align:center">
    <img src="../../img/units-test.png" alt="drawing" /> <br>
</div>
<br>


### 2-) Les tests d'intégrations :
Ce sont les tests permettant de vérifier le bon fonctionnement d'une fonctionnalité ou d'un programme après la combinaison de deux programmes qui marchait chacun de son côté.  

**Exemple:**  
Tester une fonction qui calcule la somme a et b.  
Pour cela nous utiliserons la fonction somme d'en haut avec une fonction qui prend en argument deux variables.

```python
def somme(a,b):
    return a+b
print("la première fonction somme => ", somme(2,2)==4)

#fonction somme
def somme_second(a,b):
    return a+b
# print True si 2+2=4 False sinon
print("la deuxième fonction somme => ", somme_second(3,2)==5)

print("la combinaison des deux fonctions donnera", somme_second(somme(2,2),2)==6)

```
Donc notre fonciton marche bien.
<div style="text-align:center">
    <img src="../../img/integration.png" alt="drawing" /> <br>
</div>
<br>

> **NB:** Ce que nous venons de faire est d'intégrer la fonction somme dans le programme de somme_second et ça marche comme un "chef".



### 3-) Les tests end-to-end:
Ce sont les tests permettant de vérifier le bon fonctionnement d'une application sur tous les plans.

- Il teste si le bon input donne le bon output.
- Il teste le <a  href="https://soowcode.github.io/happy-path-and-edge-cases/">happy-path et edge-cases</a> sont bien prise en compte.

- Il teste si l'input est changé, quel message d'erreur s'affiche.
- Il teste si l'input change et que c'est une fonction ou une API quelle est la valeur/code e retour.
- Il teste les fonctionnalités critiques
- Il teste  les fonctionnalités de base
- Il teste  les fonctionnalités des cas extrêmes
- Il teste tout !!



```python

#fonction somme
def somme(a,b):
    return a+b
    
# Test le bon input donne le bon output
print( somme(2,2)==4)


# Test le happy path(1+1=2 quoi qu'il se passe )
print( somme(1,1)==2)

# Si 1+1=2 alors un grand nombre donnera encore vrai 
print(somme(1023,2045)==3068)

# test 1+1=3 doit donner False
print( somme(1,1)==3)

```
.
<div style="text-align:center">
    <img src="../../img/end-to-end.png" alt="drawing" /> <br>
</div>
<br>

## Conclusion
Ce tutoriel était une introduction aux tests en python dans un autre tuto, nous parlerons des tests avec le framework `pytest` qui est un outil très puissant permettant d'écrire des tests intelligents sous le python.
