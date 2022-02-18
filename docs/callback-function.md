# Fonction callback ou anonyme
## Callback fonction
"A" est une fonction callback si elle prend en argument une fonction "B" et elle appelle "B" dans sa définition.

**Exemple**   
Entrée

```
// function
function greet(name, callback) {
    console.log('Salut' + ' ' + name);
    callback();
}

// callback function
function callMe() {
    console.log('Je suis la fonction callback');
}

// passing function as an argument
greet('Ousmane', callMe);
```
Sortie  
```
Salut Ousmane
Je suis la fonction callback
```
## Fonction anonyme
Une fonction est dite anonyme si elle n'a pas d'identité, c'est-à-dire qu'elle n'a pas de nom.

**Exemple**
```
let  x  =  function  () {  
    console.log('C'est une fonction anonyme');  
} ;  
X();  
```
` Les fonctions anonymes peuvent s'executer toutes seules, il suffit de mettre, en la definissant une parenthèse à la fin "(notre_fuction)();" ` .  
**Exemple**
```
(function() {  
    console.log('Hello');  
})();   
```
