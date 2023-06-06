# kssh

kssh

## install

```bash
git clone https://github.com/kevin197011/kssh.git ~/.kssh
cd .kssh && bundle install
grep -q 'export PATH=$PATH:~/.kssh' ~/.zshrc || echo 'export PATH=$PATH:~/.kssh' >> ~/.zshrc
```

## config

```bash
cat ~/.kssh/config.rb

# config host list
@kssh_hosts = [
  { 'name': 'devops-node1', 'ip': '1.2.3.1', 'username': 'root', 'method': 'key', 'passwdOrKey': 'id_rsa' },
  { 'name': 'devops-node2', 'ip': '1.2.3.2', 'username': 'root', 'method': 'key', 'passwdOrKey': 'id_rsa' },
  { 'name': 'devops-node3', 'ip': '1.2.3.3', 'username': 'root', 'method': 'key', 'passwdOrKey': 'id_rsa' }
]

```

## usage

```bash
# list hosts
kssh list
+--------------------------------------------+
|                 Kssh Tools                  |
+-----+---------------------+----------------+
| No. | Hostname            | Address        |
+-----+---------------------+----------------+
| 1   | devops-node1        | 1.2.3.1        |
| 2   | zabbix              | 1.2.3.2        |
| 3   | devops-node3        | 1.2.3.3        |
+-----+---------------------+----------------+
# login in host
kssh 1
```
