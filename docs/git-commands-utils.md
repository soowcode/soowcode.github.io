# Git Delete

## Git Delete Remote Branch - Supprimer une branche distante

1.Commencez par vérifier dans quelles branches vous êtes actuellement et voir également la liste des branches distances même celles que vous n'avez pas créée en exécutant la commande suivante :

```
git branch -a
```

Pour voir les branches que vous avez seulement créées exécutez la commande suivante:

```
git branch
```

2. Pour supprimer une branche distante, vous devez lui assigner l’étiquette «: remote_branch_name» n'oubliez pas les 2 points ":". Par exemple, pour supprimer la branche «my-branch» de votre dépôt(repository) distant, vous devez exécuter la commande suivante :

```
git push origin :my-branch
```

Vous pouvez également utiliser l'option -d qui signifie delete comme suit:

```
git push origin -d my-branch
```

3. Pour vous assurer que la branche a bien été supprimée, vous pouvez exécuter la commande suivante ou aller sur github/gitlab/bitbucket... :

```
git branch -a
```

Vous devriez voir que la branche «my-branch» a été supprimée.

## Git Delete local Branch - Supprimer une branche en local

Comme en haut, on lance la commande git branch afin de voir la liste des branches en local.

NB: c'est inutile de lancer git branch -a car on ne veut pas voir les branches distantes mais juste locales.

```
git branch
```

1. Pour supprimer une branche en local, vous devez exécuter la commande suivante :

```
git branch -d <branch_name>
```

Notez que vous pouvez également utiliser l'option -D qui signifie delete et force comme suit:

```
git branch -D <branch_name>
```

2. Pour vous assurer que la branche a bien été supprimée, vous pouvez exécuter la commande suivante :

```
git branch
```

Vous devriez voir que la branche «my-branch» a été supprimée.
