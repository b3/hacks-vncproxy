# Creuser un tunnel sous HTTP avec Corkscrew

### Windows --> Linux

### j'ai prévu les étapes suivantes pour configurer corkscrew sur Windows

* Installer cygwin(Un environnement Linux pour Windows)https://github.com/b3/hacks-vncproxy/blob/master/doc/install-cygwin.md
* Télécharger et compiler le corkscrew(permet les connexions SSH via les proxys HTTP / HTTPS)
* Configurer mon serveur proxy dans “$HOME/.ssh/config”:
```javascript
Host *
  ProxyCommand corkscrew cache.etu-unive.lille1.fr 3128 %h %p
```
* forward X11 avec ssh:
```javascript
export DISPLAY=localhost:0.0
ssh -2 -4 -C -X -v XXX@test.boulgour.com
```
------------
Donc j'installe cygwin avec les configues par defaut, puis dans terminale:
```javascript
export http_proxy="http://cache-etu.univ-lille1.fr:3128"

export HTTPS_PROXY="http://cache-etu.univ-lille1.fr:3128"
```
Et puis comme l'environement Linux-bash:
```javascript
wget http://www.agroman.net/corkscrew/corkscrew-2.0.tar.gz
```
Et j'ai reçue l'erreur:
```javascript
 command not found
```
Pour résoudre ce problème j'ai suivi les étapes suivantes:
* Revenir à l'installateur.(cygwin.exe)
* Effectuer la configuration initiale.
* Sous bibliothèque - aller à devel.
* Sous devel scroll et trouver wget et aussi make.
* installer toute la bibliothèque avec le nom wget et make.
* Cliquer sur Suivant, prendra un certain temps pour l'installer.

Cela résoudra le problème.
J'ai relancé la commande:
```javascript
wget http://www.agroman.net/corkscrew/corkscrew-2.0.tar.gz
```
et puis comme l'environement linux-shell: 
```javascript
tar tar xfz corkscrew-2.0.tar.gz
cd corkscrew-2.0
./configure
make
make install
```
Pour plus d'infos sur installation corkscrew voire lien suivant:
https://github.com/b3/hacks-vncproxy/blob/master/doc/install-config-corkscrew.md

Et voilà installation corkscrew sur Windows est finie.

















