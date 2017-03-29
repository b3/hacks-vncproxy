% Administration à distance à travers un proxy HTTP/HTTPS
% Fatemeh Zohari ; Florian Legrand ; Jean Canivez
% 30 Mars 2017


# Introduction

## Objective

###

- Outils sous licence libre
- Données circulent chiffrées
- Le plus simple possible (accessible à un non-informaticien) 

# SSH au dessus du proxy HTTP/HTTPS

## SSH au dessus du proxy HTTP/HTTPS

![](img/schema-ssh.png)

#### CORKSCREW

- Introduction
- Avantage
- Désavantage
 
- Installation de corkscrew

- Configuration de corkscrew
- `~/.ssh/config`
- `ssh -XC -i $key/id_rsa  -p 443 $server -o "ProxyCommand $HOME/src/bin/corkscrew $proxy $port %h %p"` 

- Script

# SCRIPT

##

#### Script

# SSH au dessus du proxy HTTP/HTTPS: LINUX vers LINUX

## SSH au dessus du proxy HTTP/HTTPS

#### LINUX vers LINUX

- Installation corkscrew
- ssh -i ~/.ssh/id_rsa -p 443 -o "ProxyCommand  /user/bin/corkscrew-2.0  cache.univ-lille1.fr 3128 %h %p"   cgir@test.boulgour.com

- Script

# SSH au dessus du proxy HTTP/HTTPS: WINDOWS vers LINUX

## SSH au dessus du proxy HTTP/HTTPS


#### WINDOWS vers LINUX

- Installation Cygwin
- Installation Corkscrew
- ssh -i ~/.ssh/id_rsa -p 443 -o "ProxyCommand /tmp/corkscrew-2.0/corkscrew.exe cache.univ-lille1.fr 3128 %h %p" cgir@test.boulgour.com

- Script

# VNC

## VNC

#### Virtual Network Computing

- Côté client :  xtightvncviewer
- Côté serveur : x11vnc

# Reverse VNC: Linux - Linux

## Reverse VNC 

####  Linux - Linux

- Client qui écoute
- Serveur diffuse son écran

- Client :   $ xvnc4viewer -listen
- Serveur : $ x11vnc -connect 172.18.48.231:5500

# Reverse VNC: Linux - Wndows

## Revers VNC

#### Linux - Windows

- Client linux : $ xvncviewer -listen
- Serveur Windows : TightVNC

# Conclution

## Conclusion

####

-Prendre le contrôle d'un pc à distance situé derrière un proxy

-Travail d'équipe

-Découverte de nouveaux outils (Corkscrew, Gygwin, ...)
