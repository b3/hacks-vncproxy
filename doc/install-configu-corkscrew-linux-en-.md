# Dig a tunnel under HTTP with Corkscrew

## Linux --> Linux
Corkscrew is a simple tool to make a tunnel TCP through a HTTP proxy. He can be used for example to connect to aserver SSH, who listens to on the port 443, through a proxy HTTP.

#### Installation of Corkscrew

Corkscrew will install on our machine customer. There is two way to install corkscrew:


>  1- If we are on Debian it is always the same melody:
 
```
shirin@debian:~$ sudo apt-get install corkscrew
```
> 2-  To compile it: 
> 	* we should download it , 
>    * Then in the directory of Corkscrew type 
```
./configure
``` 
>    * Then 
```
make
```
> 	* Then in the directory of Corkscrew type
 ```
make install
```


#### How is he(it) used?

The implementation of corkscrew with SSH / OpenSSH is very simple. Add The following line in your file ~ / .ssh / config:

```javascript
Host *
   ProxyCommand /tmp/toto/bin/corkscrew cache-etu.univ-lille1.fr 3128 %h %p
```
Replace /tmp/toto/bin/corkscrew cache-etu.univ-lille1.fr and 3128 by correct values.

#### Problem with the connection to the server with ssh:

I know hat my key ssh is correct,but I get this error:```javascript
ssh -vvv XXX@test.boulgour.com
OpenSSH_6.7p1 Debian-5+deb8u3, OpenSSL 1.0.1t  3 May 2016
debug1: Reading configuration data /home/infoetu/XXX/.ssh/config
debug1: /home/infoetu/XXX/.ssh/config line 5: Applying options for *
debug1: Reading configuration data /etc/ssh/ssh_config
debug1: /etc/ssh/ssh_config line 19: Applying options for *
debug1: Executing proxy command: exec /tmp/toto/bin/corkscrew cache-etu.univ-lille1.fr 3128 test.boulgour.com 22
debug1: permanently_drop_suid: 1779
debug1: identity file /home/infoetu/XXX/.ssh/id_rsa type 1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_rsa-cert type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_dsa type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_dsa-cert type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_ecdsa type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_ecdsa-cert type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_ed25519 type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_ed25519-cert type -1
debug1: Enabling compatibility mode for protocol 2.0
debug1: Local version string SSH-2.0-OpenSSH_6.7p1 Debian-5+deb8u3
Proxy could not open connnection to test.boulgour.com:  Forbidden
ssh_exchange_identification: Connection closed by remote host
```

I find that corkscrew can be used to connect to a server SSH executed on a distant port 443 via a proxy HTTP strict.donc I think that the only way to solve this problem is to change the port ssh on server outstrip, by adding following configue in the file sshd_config:
```javascript
Port 443
```
And since our computer local we should Create the file 
~ / .ssh / config with the following contents::
```javascript
Host *
ProxyCommand /usr/bin/corkscrew cache-etu.unive-lille1 3128 %h %p 
```
we  should trpe:
```javascript
ssh -vvv -X -p 443 -i -i ~/.ssh/keys/id_rsa XXX@test.boulgour.com
```
And here is we are connected:
```javascript
Enter passphrase for key '/root/.ssh/keys/id_rsa': 

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Wed Mar  8 15:42:21 2017 from cacheserv2.univ-lille1.fr
XXX@lille:~$ 
```

