# Github-actions
## Introduction
<img src="../../img/gitflow.png" /> <br>
Il est indispensable de développer des logiciels sans les pipelines CI/CD.

Les plates-formes CI/CD sont des systèmes de contrôles phénoménaux. Il ne demande pas beaucoup de configurations et est super-amazing !

En entreprise, j'utilise Gitlab-ci et j'apprends Jenkins, mais j'utilise pour mes projets personnels github, alors je me suis dit si je peux avoir des pipelines sur Gitlab why not sur github .

Ainsi, je me suis mis à la recherche d'une chose qui remplace les pipelines de gitlab en quelque chose sur github et boum je suis tombée sur Github-actions.

Dans ce tutoriel, je ne me mettrais surtout pas à comparer les CI/CD tools, mais expliqué mon aventure avec github-actions.


## Fonctionnement
Il faut savoir que toutes les actions de GitHub commencent par un événements. Les événements sont les déclencheurs (triggers) qui indiquent à GitHub d'exécuter des actions configurées.
Pour voir la liste des évenements déclencheurs je vous invite sur 
<a style="text-decoration: underline; color:black" href="https://docs.github.com/en/developers/webhooks-and-events/webhooks/webhook-events-and-payloads">Ici une github-events.</a>

- `Push` éclenche quand un utilisateur pousse dans une branche
- `Pull_request` Se déclenche lorsqu'une pull_request est reçue sur le répository.
- `Fork` Déclenche quand le dépôt est forked.
- `Issues` Se déclenche quand une issue est modifiée.
- `Release` Se déclenche quand une version du dépôt est créée.

### Exemple de gitflow
```yml
name: CI/CD

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the main branch
  push:
    branches: [master]
# Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

jobs:
 # This workflow contains a single job called "deploy"
  deploy:
    runs-on: ubuntu-latest
    steps:
      - run: printenv
      - uses: actions/checkout@v2
      - run: echo "🎉 The job was successful."

```
### Explications
**L'attribut name**  
```yml
name: CI/CD
```
La section name constitue le nom de votre workflow et sera le nom affiché ici à gauche.
<br>
<div style="text-align:center">
    <img src="../../img/workflow.png"/><br>
</div>
<br>


**L'attribut on** 
```yml

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the main branch
  push:
    branches: [master]
```
Le `on` déclenche le workflow sur les événements push ou pull request mais uniquement pour la branche `master`.

**L'attribut workflow_dispatch** 

```yml
# Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:
```  

le `workflow_dispatch` permet d'exécuter ce workflow manuellement à partir de l'onglet 
"Actions".
<br>
<div style="text-align:center">
    <img src="../../img/jobs.png"/><br>
</div>
<br>

**L'attribut jobs** 

```yml
jobs:
 # This workflow contains a single job called "deploy"
  deploy:
    runs-on: ubuntu-latest
    steps:
      - run: printenv
      - uses: actions/checkout@v2
      - run: echo "🎉 The job was successful."
```
Ce workflow contient un seul job appelé `deploy`  qui 
- run: `pritenv `affiche les variables d'env
- uses: `actions/checkout@v2` 
cette action vérifie le repository sous $GITHUB_WORKSPACE, afin que le workflow puisse y accéder.
- run: `echo "🎉 The job was successful."` affiche ce message à la fin.
<br>
<div style="text-align:center">
    <img src="../../img/deploy-job.png"/><br>
</div>
<br>
<br>

## Conclusion
Ce tutoriel était une brève introduction à github-actions.

Pour plus d'informations visitez le  <a style="text-decoration: underline; color:black" href="https://docs.github.com/en/actions/quickstart">site github actions.</a>