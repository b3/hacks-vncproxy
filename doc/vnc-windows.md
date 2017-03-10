# Connexion reverse VNC sous windows
## Structure
Dans notre cas nous allons prendre le controle d'une machine virtuelle Windows depuis la machine hôte sous Linux.  
L'adresse ip de la machine hôte est 172.18.48.231. Nous utiliserons le port par défaut : 5500.
## TightVNC
Pour le serveur VNC sous Windows j'ai choisi TightVNC car il est libre et dispose d'une bonne communauté en cas de besoin.
## Configuration
### Sur la machine Linux (client)
Une fois le paquet téléchargé, il suffit d'ouvrir un terminal et d'y rentrer la commande :  
`xvnc4viewer -listen`  
A ce moment, le client va écouter sur le port 5500 et attendre qu'un serveur lui diffuse son écran.  
![](http://nsa37.casimages.com/img/2017/03/08//170308023935483815.png)
### Sur la machine Windows (serveur)
Une fois installé Tight VNC et le client lancé, il faut lancer *TightVNC Server (service mode)*. Afin que le serveur fonctionne en mode reverse, il suffit de faire un clic droit sur l'icone en bas à droite dans la barre de tâches et de cliquer sur *attach listening viewer*.  
![](http://nsa37.casimages.com/img/2017/03/08//170308023454757276.png)  
Là une boite de dialogue apparaît dans laquelle il faut rentrer l'adresse de la machine avec laquelle on veut partager la connexion ainsi que le port sur lequel le serveur va écouter. Il s'agit ici de la amchine hôte. Cliquer sur *attach* pour valider.  
Par exemple dans notre cas : 192.168.1.42::5500  
![](http://nsa37.casimages.com/img/2017/03/08//170308023726311449.png)
