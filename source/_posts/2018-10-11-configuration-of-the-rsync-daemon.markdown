---
layout: post
title: "Configuration of the rsync Daemon"
date: 2018-10-11 17:30:09 +0800
comments: true
categories: [ubuntu]
---

1 nano /etc/default/rsync 
```
RSYNC_ENABLE=inetd
```

2 
```
sudo apt-get install xinetd
```

3 create file  /etc/xinetd.d/rsync (the same as below)
```
service rsync
{
    disable = no
    socket_type = stream
    wait = no
    user = root  # must be root
    server = /usr/bin/rsync
    server_args = --daemon
    log_on_failure += USERID
    flags = IPv6
}
```

4 create file /etc/rsyncd.conf 
```
max connections = 20
log file = /var/log/rsync.log
timeout = 300

[share] # module name
comment = Public Share
path = /home/share
read only = yes
list = yes
uid = nobody
gid = nogroup
auth users = test_rsync  # the user to auth to rsync, 
secrets file = /etc/rsyncd.secrets
```

5 create file /etc/rsyncd.secrets for password
sudo nano /etc/rsyncd.secrets 
```
rsync_user:rsync_password
# other users ...
```

sudo chmod 600 /etc/rsyncd.secrets

6 restart
```
sudo /etc/init.d/xinetd restart
```

7 create password file in client side
sudo nano /etc/rsync.secrets
```
rsync_password
```
sudo chmod 600 /etc/rsync.secrets

8 have a test in client side
```
rsync -azhrvcP --delete --password-file=/etc/rsync.secrets  rsync_user@server_ip::share  /home/user/demo 
```


ref
```
https://help.ubuntu.com/community/rsync
```