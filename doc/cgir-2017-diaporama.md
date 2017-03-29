% Administration à distance à travers un proxy HTTP/HTTPS

% Fatemeh Zohari ; Florian Legrand ; Jean Canivez

% 30 Mars 2017


# Introduction

## Objective

### 

- Outils sous licence libre
- Données circulent chiffrées
- Le plus simple possible (accessible à un non-informaticien) 


# VNC

![](img/vnc-exemple.jpg)

### Virtual Network Computing

- Côté client :  xtightvncviewer
- Côté serveur : x11vnc

# Reverse VNC: Linux - Linux

###  Linux - Linux

- Client qui écoute
- Serveur diffuse son écran

- Client : $ xvnc4viewer -listen
- Serveur : $ x11vnc -connect 172.18.48.231:5500

# Reverse VNC: Linux - Wndows

### Linux - Windows

- Client linux : $ xvncviewer -listen
- Serveur Windows : TightVNC


# SSH au dessus du proxy HTTP/HTTPS

### CORKSCREW

- Introduction
- Avantage
- Désavantage
- Installation de corkscrew
- Configuration de corkscrew				
- Script

# SSH au dessus du proxy HTTP/HTTPS: LINUX vers LINUX

### LINUX vers LINUX

- Installation corkscrew
- Configuration
- Script(./corkscrew)

# SSH au dessus du proxy HTTP/HTTPS: WINDOWS vers LINUX

### WINDOWS vers LINUX

- Installation Cygwin
- Installation Corkscrew
- Configuration
- Script


# Administration à distance à travers un proxy HTTP/HTTPS

![](img/vnc-ssh.png)


![](img/conclution.png)



# Conclution

## Conclusion

###

-Prendre le contrôle d'un pc à distance situé derrière un proxy

-Découverte de nouveaux outils (Corkscrew, Gygwin, ...)
