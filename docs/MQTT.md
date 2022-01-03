# MQTT
![Screenshot-from-2021-11-17-17-02-57](https://thanos.savoirguinee.com/content/images/2021/11/Screenshot-from-2021-11-17-17-02-57.png)
Utilisé pour le transfert de **Machine-to-Machine (M2M)**, MQTT est considéré comme l'un des principaux protocoles de messagerie de l'internet des objets, mais côté industriel (**IoT)**. Il est open source, léger (**en tête de messages de 2 octets**), faible utilisation de la bande passante du réseau (**93 fois plus rapides que le HTTP**), faible consommation d'énergie (**11 fois moins pour envoyer et 170 pour ne recevoir que le HTTP**) et fiable (mécanisme natif de Qos, acronyme de Quality of Service).

Son autre avantage, c'est qu'il est extrêmement facile à mettre en œuvre du côté client. C'est donc la solution parfaite pour l'IoT.

Attention cependant, fortement vulnérable si certaines conditions de sécurité ne sont pas réunies, comme l'absence de chiffrage sur la transmission & l'authentification (MQTT est capable d'être déployé sans chiffrement TLS ou SSL.)

Utilisé par nombreux acteurs dans le monde Facebook, openstack, geospatial, Bosh, IBM, Adarfuit, EVERYTHING IoT, Google Home Assistant, Pimatic, MS Azure, certains systèmes de signalisation, systèmes d'alarme, l'industrie du Gaz, de l'électricité et bien plus encore. 



MQTT focntionne sur le principe de **publication/abonnement**(publish/subscribe)


## C’est quoi un broker MQTT ?


Vous pouvez envoyer une commande pour contrôler une sortie ou vous pouvez la lire à partir d'un capteur et la publier.
Dans Mqtt, il y a quelques concepts de base que vous devez comprendre : publier et souscrire des messages, des topics et des broker.
Le premier concept est le système de publication et d'abonnement.

Qu'est-ce que cela signifie ? Cela signifie que le dispositif peut publier des messages à vos autres dispositifs ou votre dispositif peut s'abonner à un sujet particulier.Pour recevoir ces messages, par exemple, le *dispositif 1* publie sur un sujet, le *dispositif 2* s'abonne au même sujet que le *dispositif 1* publie. Ainsi, le *dispositif 2* reçoit le message.
![subpub6](https://thanos.savoirguinee.com/content/images/2021/11/subpub6.png)

Les messages sont les informations que vous souhaitez échanger entre vos appareils, qu'il s'agisse d'une commande ou de données avec le système de publication/abonnement.
Vous pouvez faire à peu près tout ce que vous voulez dans vos projets de mission en mode autonome.
![animation_300_kw504ekk](https://thanos.savoirguinee.com/content/images/2021/11/animation_300_kw504ekk.gif)

Un autre concept important est celui des topics. Les topics sont la façon dont vous enregistrez l'intérêt pour les messages entrants ou je vais spécifier où vous voulez publier votre message.
votre message. 
Les topics sont représentés par des chaînes de caractères séparées par des barres obliques. Les slashs indiquent le niveau du sujet, voici un exemple
si vous créez maintenant un sujet pour une lampe dans votre propre bureau (home/office/lamp).

Par exemple, si vous souhaitez allumer votre lampe dans votre bureau à la maison, vous publieriez un message dans un topic en utilisant node-red disant on et votre machine sera abonnée à ce même sujet.

Elle recevra donc le message on et allumera finalement la lampe.
![Screenshot-from-2021-11-17-13-43-09](https://thanos.savoirguinee.com/content/images/2021/11/Screenshot-from-2021-11-17-13-43-09.png)

```Les topics sont sensibles à la casse :``` Ce qui fait que home/office/lamp et home/office/Lamp sont différents.

**Faites attention au terme borker** : le broker est principalement responsable de la réception de tous les messages.
Le broker MQTT est un equipement intermediaire entre le publisher et l'abonée, il filtre les messages pour décider qui est intéressé et publie ensuite le message aux clients abonnés.
Il y a plusieurs brokers que vous pouvez utiliser.


Nous allons utiliser le broker mosquito que vous installerez sur votre raspberry pi.

## Installer Mosquitto sur Linux ou Raspberry Pi
D'abord mettons à jour notre système avant d’installer Mosquito ce n'est pas obligatoire mais recommandé.
```
sudo apt update && apt upgrade
```
 Maintenant installons Mosquitto
```
sudo apt install mosquitto
```
Pour faire des tests il faut installer Mosquitto client
```
sudo apt-get install mosquitto-clients
```
Ici nos tests se baseront justes sur Lunix, si jamais vous voulez installer Mosquito pour ***Rasperry Pi***, installer mosquitto_sub, mosquitto_pub et mosquitto_passwVous voulez faire du mosquito en python? Alors je vous conseille  python-mosquitto
**Exemple** de server pour vos test: [Server de test](https://test.mosquitto.org/)
Pour verifier l'insatllation 
```
systemctl status mosquitto
```
## Installer Mosquitto sur Windows ou macOS
Pour Windows ou macos je vous recommande de télécharger et installer via ce [lien](https://mosquitto.org/download/)


## Sécurisé Mosquitto
Maintenant on a Mosquitto qui fonctionne bien sur notre machine.
Mais pas sécurisé, maintenant sécurisons le! Creons un user avec un password
Pour cela tapez
```
cd /etc/mosquitto
```
Vous n'avez pas besoin de vous identifier tant que vous ne faite pas une gestion de votre domotique DIY car pour la domotique vous serez 	amené à sécuriser vos appareils car sinon tout le monde peut accéder à appareils(chauffage, climatisation, motorisation de volets roulants.....).

Donc le mieux c'est de les protéger avec un mot de passe.
```
sudo mosquitto_passwd -c /etc/mosquitto/passwd USER_NAME

```
Afin de limiter l'accès aux utilisateurs à un compte, modifiez le fichier de configuration. 
Pour cela tapez la commande:
```
sudo /etc/mosquitto/mosquitto.conf
```
Ajoutez ceci à la fin du fichier 
```
allow_anonymous false
password_file /etc/mosquitto/passwordfile
```
Maintenant on redemarre Mosquitto
```
systemctl restart mosquitto
```
![systemctl](https://thanos.savoirguinee.com/content/images/2021/11/systemctl.png)
## Publier (envoyer) un message MQTT depuis le terminal

Pour publier un message on utilise la commande mosquitto_pub et pour connaitre les options liées à la commande on utilise mosquitto_pub -help

-h  spcifie le nom du broker sur le quel on se connecte (ou IP)
-t  spcifie le topic sur lequel le message est publié 
-P  spcifie le mot de passe (optionnel)
-m  spcifie le message à envoyer qui peut être une valeur ou un JSON.
-u  spcifie le nom d’utilisateur (optionnel)
-p  spcifie le port, qui par défaut est 1883
Pour plus d'information voir [documentation](https://mosquitto.org/man/mosquitto_pub-1.html)


**Exemple**, on se connecte au serveur -h localhost sur le Topic -t news/football et on publie le message -m j'ai gagné le ballon d'or

```
mosquitto_pub -h localhost -t news/football -m "jai gagné le ballon d'or!"
```
## Recevoir (souscrire) des messages
Pour recevoir un message on utilise la commande mosquitto_sub et pour connaitre les options liées à la commande on utilise mosquitto_sub -help
Ouvrez un  second Terminal et exécutez la commande suivant.
```
mosquitto_sub -h localhost -t news/football
```
Exemple d'échange: à gauche le publisher et à droite le subscriber
![Peek-2021-11-17-15-39](https://thanos.savoirguinee.com/content/images/2021/11/Peek-2021-11-17-15-39.gif)

## Conclusion
Dans ce tutoriel nous avons parlé des avantages et inconvénients de MQTT.
Nous avons installé et testé MQTT en utilisant le serveur mosquito sur Lunix.
Pour ceux qui ont Windows ou macos nous les avons redirigé vers la documentation de Mosquito.
Rappelons que MQTT est un protocole TCP/IP utilisé beaucoup dans l'IoT industriel.Il est le protocole parfait pour votre domotique et est super bien adapté au développement d’objets connectés vus sa rapidité et sa lergerté.
