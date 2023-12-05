# Python fonctions

<div style="text-align:center">
    <img src="../../img/python.gif" alt="drawing" style="width:40%; height:40%; "/> <br>
    Les fonctions !!! &#128512;!! <br>
</div>
<br>

## Introduction

Les fonctions en Python sont des blocs de code réutilisables qui permettent d'organiser et de structurer un programme. Elles simplifient la gestion de tâches spécifiques en les encapsulant dans des unités logiques. La définition d'une fonction se fait à l'aide du mot-clé `def`, suivi du nom de la fonction et de ses paramètres. Dans cette section, nous explorerons la syntaxe de base d'une fonction en Python.

## Syntaxe de base

```python
def nom_de_la_fonction(parametre1, parametre2, ...):
    """
    Documentation de la fonction (docstring)
    """
    # Code de la fonction
    # ...
    return resultat
```

- `def`: Mot-clé pour définir une fonction.
- `nom_de_la_fonction`: Identificateur de la fonction.
- `(parametre1, parametre2, ...)`: Liste des paramètres d'entrée.
- `:`: Marque le début du bloc de code de la fonction.
- `"""Documentation de la fonction"""`: Docstring pour documenter la fonction.
- `return resultat`: Instruction pour renvoyer une valeur en sortie.

## Fonctionnement

Une fois une fonction définie, elle peut être appelée en fournissant les valeurs nécessaires aux paramètres. Le bloc de code à l'intérieur de la fonction s'exécute, effectuant la tâche spécifique définie. Les fonctions peuvent également avoir des paramètres avec des valeurs par défaut, ce qui simplifie l'appel de la fonction avec moins de paramètres.

### Exemple

```python
def addition(a, b):
    """
    Cette fonction prend deux nombres en entrée et renvoie leur somme.
    """
    resultat = a + b
    return resultat
```

### Appel de fonction

```python
resultat_addition = addition(3, 5)
print(resultat_addition)  # Affiche 8
```

### Valeurs par défaut des paramètres

```python
def multiplication(x, y=2):
    """
    Cette fonction multiplie deux nombres, le deuxième paramètre a une valeur par défaut de 2.
    """
    resultat = x * y
    return resultat
```

```python
resultat_multiplication = multiplication(4)
print(resultat_multiplication)  # Affiche 8
```

### Nombre variable de paramètres

```python
def somme_variable(*args):
    """
    Cette fonction prend un nombre variable d'arguments et renvoie leur somme.
    """
    resultat = sum(args)
    return resultat
```

```python
print(somme_variable(1, 2, 3))          # Affiche 6
print(somme_variable(1, 2, 3, 4, 5))     # Affiche 15
```

## Conclusion

<div style="text-align:center">
<img src="../../img/done.gif" alt="drawing" style="width:30%; height:30%"/> 
</div>

Les fonctions sont un élément essentiel de la programmation en Python. Elles favorisent la réutilisabilité du code, la modularité et une meilleure organisation du programme. En documentant vos fonctions à l'aide de docstrings, vous facilitez la compréhension du code pour vous-même et pour d'autres développeurs. Les paramètres par défaut et le nombre variable de paramètres offrent une flexibilité accrue lors de la conception de fonctions. En intégrant judicieusement les fonctions dans votre code, vous contribuerez à créer des programmes plus clairs, plus efficaces et plus faciles à maintenir.
 
