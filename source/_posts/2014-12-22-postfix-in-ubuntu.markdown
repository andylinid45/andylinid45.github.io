---
layout: post
title: "Postfix in Ubuntu"
date: 2014-12-22 21:21:14 +0800
comments: true
categories: production
---

### outgoing mail

```
sudo apt-get install postfix
```

###test outgoing mail
```
echo "My test email sent from sendmail" | /usr/sbin/sendmail  your_gmail@gmail.com
```

###incomming mail

setup MX record in DNS, point to your VPS ip or domain name

###test MX record
```
dig mx your_domain.com
```

and now you can send mail to your_account_name_in_vps@your_domain.com , and other mail address will be rejected


### add mail forward to your gmail


sudo nano /etc/postfix/main.cf
add 
```
virtual_alias_maps = hash:/etc/postfix/virtual
```

sudo nano  /etc/postfix/virtual
add
```
your_new_mail_address@your_domain.com  your_gmail@gmail.com
```

```
sudo postmap /etc/postfix/virtual
sudo /etc/init.d/postfix restart
```

log file in
```
/var/log/mail.err 
/var/log/mail.log 
```




