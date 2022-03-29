# Happy path and edge cases

<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets8.lottiefiles.com/packages/lf20_rbtawnwz.json"  background="transparent"  speed="2.5"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>

Un nouveau concept qui est très important dans les tests. Le "edge cases and happy path" deux termes contraires mais très importants. Ils seront définis dans la section qui est en bas et un exemple de chacun sera donné.  
L'un est pour les cas extrêmes et l'autre pour les cas où l'on s'attend à une chose et on l'obtient si on suit le bon chemin.
## happy path   
c'est le chemin qui, si on le suit rien de fâcheux n'arrivera.
<br>
<div style="text-align:center">
    <img src="../../img/happy-path.jpg" style="width:220px; height:220px"/><br>
</div>
<br>
**Exemple :** si vous voulez de l'argent à la banque, il faut mettre sa carte et mettre le bon code et aussi qu'il y ait de l'argent au distributeur si tout ceci réunit, vous obtiendrez sûrement votre argent et c'est le `happy path`.

## Edge case 
c'est un problème ou une situation qui arrive seulement dans l'extrême par exemple, si un ballon est rempli d'air plus qu'il n'en pouvait contenir peut finir par se casser même sans qu'il n'y ait un autre paramètre de destruction.

<br>
<div style="text-align:center">
    <img src="../../img/edge-case.png"style="width:50%; height:50%"/><br>
</div>
<br>
**Exemple :** une fonction qui calcule qui divise deux nombres pourrait être testé en utilisant des nombres très gros et très petits aussi. Cela dit l'avant est de voir que la fonction marche dans les bords et au centre donc elle marchera avec les nombres entre ce petit et ce grand nombre.

## Conclusion
Ce tutoriel était une explication simple et rapide d'un concept souvent utilisé dans les tests, mais dont les gens ne savent pas le nom ou certains ne l'utilisent pas.

EN espérant qu'à partir de maintenant, vous tiendrez compte de concept dans vos tests.

À bientôt :D