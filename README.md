# scripts

Run any of the commands below on a clean, minimal installation of Debian Buster.

- This will install apache, php and create the configuration for the first domain.
```
bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/aristosv/scripts/master/install_apache)
```
- This will install docker.
```
bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/aristosv/scripts/master/install_docker)
```
- This will install fail2ban, set up an ssh jail, and send an email when an ip is banned. it assumes you already installed sendmail.
```
bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/aristosv/scripts/master/install_fail2ban)
```
- This will install mariadb and create the first user and database.
```
bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/aristosv/scripts/master/install_mariadb)
```
- This will install the latest stable opencart release. it assumes you already installed apache and mariadb.
```
bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/aristosv/scripts/master/install_opencart)
```
- This will install sendmail and use a gmail account as a relay for outgoing emails.
```
bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/aristosv/scripts/master/install_sendmail)
```
- This will install the latest version of wordpress. it assumes you already installed apache.
```
bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/aristosv/scripts/master/install_wordpress)
```
