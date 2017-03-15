# Connexion Reverse VNC Linux-Linux

## Structure
Nous allons prendre le contrôle d'une machine Linux à distance à l'aide d'une autre machine Linux situé dans le même réseau (Salle de TP).  
L'adresse ip de la machine qui prend le contrôle : 172.18.48.231  
Le port d'écoute par défaut est le port 5500.

## Configuration


### Pour le poste en local sous GNU/LINUX (le dépanneur)

Il faut télécharger le paquet `xtightvncviewer`  
Ensuite, il faut éxécuter la commande `xvncviewer -listen` 

![](http://nsa38.casimages.com/img/2017/03/08//170308023124150996.png)

Cette commande permet au client d'écouter sur le port spécifié et permet d'attendre qu'un serveur vienne écouter sur ce même port.

### Pour la machine distante

Il faut installer le paquet `x11vnc`

Puis il faut simplement lancer la commande suivant  
`$ x11vnc -connect @ip_machine_prend_contrôle:port_d'écoute`

exemple :  
La machine qui prend le contrôle à pour adresse 172.18.48.231 et le port d'écoute est le 5500.  
`$ x11vnc -connect 172.18.48.231:5500`

La machine locale a bien pris possession de la machine distante.

## 

# VNC connection reverse Linux-Linux
## Structure

We will take control of a Linux machine remotely using another Linux machine located in the same network.
The ip address of the machine that take control is 172.18.48.231.  
The default port listening is 5500.  

## Configuration  
### Local machine in GNU/LINUX (repairman)  
You have to download the package `xtightvncviewer`.  
After that, you can execute the following command : `$ xvncviewer -listen`.  
![](http://nsa38.casimages.com/img/2017/03/08//170308023124150996.png)  

This command allows the client to listen on the specify port (here 5500). The client waits a server to listen on the same port.  
It allows you to wait a server to listen to the same port.

## Remote machine

You have to download the package `x11vnc`
Execute the following command:  
`$ x11vnc -connect @ip_machine_take_control:listening_port`  

Example :  
The machine that takes control to for ip address 172.18.48.231 and listening port 5500:  
`$ x11vnc -connect 172.18.48.231:5500`  
The local machine took possession of the remote machine.  

 

