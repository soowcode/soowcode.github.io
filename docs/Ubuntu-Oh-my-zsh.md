# Oh My Zsh
## Introduction

Humm, disons que vous en avez marre de la manière dont votre terminal look like alors Oh My Zsh est l'une des solutions les plus utilisées.

- Il est open source.
- Il est super personnalisable.
- Il contient des milliers de fonctions utiles.
- Il est **`OH MY ZSH`**.  


## Fonctionnement
### Installation
Comme voulons installer un nouvel utilitaire sur notre système, nous devons d'abord mettre à jour notre ordinateur pour le préparer à exécuter ce nouveau. 
 ```
 sudo apt-get update
 ```
 Ensuite installer zsh avec la commande suivante
  ```
 sudo apt-get install zsh
 ```
 Pour vérifier la version et aussi que c'est bien installé, tapez la commande.
  ```
 zsh --version
 ```
Maintenant votre machine est prête à installer Oh My Zsh 
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
Après ceci, vous avez Oh My Zsh est bien installé, mais sa meilleure utilisation est l'auto compétition, l'historique et le highlighting pour cela, personnalisons Oh My Zsh.
### Personnalisation

Télécharger zsh-autosuggestions avec la commande suivante
```
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
```
Télécharger zsh-syntax-highlighting avec la commande suivante
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```
Modifier le fichier `~/.zshrc` ainsi, trouver l'emplacement des plugins pour ajouter le autosuggestions et le highlighting comme ceci 
``` 
plugins=(       git
                vscode
                zsh-autosuggestions
                zsh-syntax-highlighting
        )
```
<div style="text-align:center">
<img src="../../img/ohmyzsh.png" alt="drawing"/>

</div>
<br>

## Conclusion

<div style="text-align:center">
    <img src="../../img/happy.gif" alt="drawing" style="width:30%; height:30%; "/> 
</div>
Congratulations!!  
Vous avez un terminal maintenant.  
Bon coding time. 
Pour plus de fun fonctionalités visitez ce site 
<a  style="text-decoration: underline; color:black"  href="https://gist.github.com/dogrocker/1efb8fd9427779c827058f873b94df95">OH My Zsh</a>

