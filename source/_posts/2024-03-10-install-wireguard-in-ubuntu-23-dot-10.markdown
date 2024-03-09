---
layout: post
title: "install wireguard in ubuntu 23.10"
date: 2024-03-10 02:21:51 +0800
comments: true
categories: production
---

install wireguard
```
sudo apt-get update
sudo apt install wireguard

echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
echo "net.ipv4.conf.all.forwarding=1" >> /etc/sysctl.conf
echo "net.ipv6.conf.all.forwarding=1" >> /etc/sysctl.conf
sysctl -p
```

Create server and client at the same time.
nano create_wg.py and run it: python3 create_wg.py
```
#run as root
from subprocess import run
from os.path import exists
import shutil


ip = run("ip -4 addr | sed -ne 's|^.* inet \\([^/]*\\)/.* scope global.*$|\\1|p' | head -1", shell=True, capture_output=True, text=True).stdout.strip()
print(f"Your server public ip is {ip}")

subnet = input("What is your subnet? default is 38\n")
subnet = int(subnet) if subnet else 38

count = input("How many clients would you like to create? default is 18\n")
count = int(count) if count else 18

for num in range(1, count + 1):
	config_file_name = f"wg{subnet:02d}.{num:02d}"
	client_folder = f"wg{subnet:02d}"
	port = f"1{subnet:02d}{num:02d}"
	net = f"10.{subnet}.{num}"

	private = run("wg genkey", shell=True, capture_output=True, text=True).stdout.strip()
	public = run(f"echo {private} | wg pubkey", shell=True, capture_output=True, text=True).stdout.strip()

	client_private = run("wg genkey", shell=True, capture_output=True, text=True).stdout.strip()
	client_public = run(f"echo {client_private} | wg pubkey", shell=True, capture_output=True, text=True).stdout.strip()

	run(f"systemctl stop wg-quick@{config_file_name}.service", shell=True)
	run(f"systemctl disable wg-quick@{config_file_name}.service", shell=True)

	config = f"""
[Interface]
Address = {net}.1/32
ListenPort = {port}
PrivateKey = {private}
SaveConfig = false
PostUp = iptables -A FORWARD -i %i -j ACCEPT; iptables -A FORWARD -o %i -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
PostDown = iptables -D FORWARD -i %i -j ACCEPT; iptables -D FORWARD -o %i -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE

[Peer]
PublicKey = {client_public}
AllowedIPs = {net}.2/32
"""

	client_config = f"""
[Interface]
PrivateKey = {client_private}
Address = {net}.2/32
DNS = 208.67.222.222, 208.67.220.220

[Peer]
PublicKey = {public}
AllowedIPs = 0.0.0.0/0, ::/0
Endpoint = {ip}:{port}
PersistentKeepalive = 25
"""

	if not exists(f"/etc/wireguard/{client_folder}"):
		run(f"mkdir /etc/wireguard/{client_folder}", shell=True)

	with open(f"/etc/wireguard/{config_file_name}.conf", "w", encoding="utf-8") as file:
		file.write(config)

	with open(f"/etc/wireguard/{client_folder}/{config_file_name}.conf", "w", encoding="utf-8") as file:
		file.write(client_config)

	run(f"systemctl enable wg-quick@{config_file_name}.service", shell=True)
	run(f"systemctl start wg-quick@{config_file_name}.service", shell=True)


shutil.make_archive(f"/etc/wireguard/{client_folder}", 'zip', f"/etc/wireguard/{client_folder}")
```


Delete server, nano delete_wg.py, and run it : python3 delete_wg.py 
```
#run as root
from subprocess import run
from os.path import exists

def delete_service_by_name(name):
	if exists(f"/etc/wireguard/{name}.conf"):
		run(f"systemctl stop wg-quick@{name}.service", shell=True)
		run(f"systemctl disable wg-quick@{name}.service", shell=True)
		run(f"rm /etc/wireguard/{name}.conf", shell=True)
	

def delete_service_by_subnet(subnet):
	for num in range(1, 99):
		delete_service_by_name(f"wg{subnet:02d}.{num:02d}")
	run(f"rm /etc/wireguard/wg{subnet:02d}.zip", shell=True)	
	run(f"rm /etc/wireguard/wg{subnet:02d} -r", shell=True)
	

subnet = input("Which subnet do you want to delete?\n")
if subnet:
	delete_service_by_subnet(int(subnet))
```