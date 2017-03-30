# Dig a tunnel under HTTP with Corkscrew

### Windows --> Linux

### I planned the following steps to configure corkscrew on Windows

* Install cygwin (A Linux environment for Windows) https://github.com/b3/hacks-vncproxy/blob/maste r/doc/install-cygwin.md 
* Download and compile the corkscrew (allows the connections SSH via proxies HTTP/HTTP) 
* Configure my proxy server in "$HOME/.ssh/config":
```javascript
Host *
  ProxyCommand corkscrew cache.etu-unive.lille1.fr 3128 %h %p
```
* forward X11 with ssh:
```javascript
export DISPLAY=localhost:0.0
ssh -2 -4 -C -X -v XXX@test.boulgour.com
```
------------
Thus I installed cygwin with configues by default, then in terminal i typed:
```javascript
export http_proxy="http://cache-etu.univ-lille1.fr:3128"

export HTTPS_PROXY="http://cache-etu.univ-lille1.fr:3128"
```
Then linke Linux-bash environement:
```javascript
wget http://www.agroman.net/corkscrew/corkscrew-2.0.tar.gz
```
I get error:
```javascript
 command not found
```
To solve this problem I followed the following steps:

* Return to the installer.(Cygwin.exe )
* Make the initial configuration.
* Under library(bookcase) - go to devel.
* Under devel scroll and to find wget and also make.
* To install all the library with the name wget and make.
* To click on Next, will take some time to install it.

It will solve the problem. I retyped the command:

```javascript
wget http://www.agroman.net/corkscrew/corkscrew-2.0.tar.gz
```
And like linux-shell environement: 
```javascript
tar tar xfz corkscrew-2.0.tar.gz
cd corkscrew-2.0
./configure
make
make install
```
For more information see following link:
https://github.com/b3/hacks-vncproxy/blob/master/doc/install-config-corkscrew.md



















