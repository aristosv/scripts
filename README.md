# Various Scripts

Automated installation of various binaries.

Run any of the commands below on a clean, minimal installation of Debian Buster.

- This will install sendmail and use a gmail account as a relay for outgoing emails.
```
bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/aristosv/scripts/master/install_sendmail)
```
- This will install fail2ban, set up an ssh jail, and send an email when an ip is banned.
```
bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/aristosv/scripts/master/install_fail2ban)
```
