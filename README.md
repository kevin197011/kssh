# kssh

kssh

## install

```bash
git clone https://github.com/kevin197011/kssh.git ~/.kssh
cd .kssh && bundle install
grep -q 'export PATH="$PATH:~/.kssh/bin"' ~/.zshrc || echo 'export PATH="$PATH:~/.kssh/bin"' >> ~/.zshrc
zsh
```

## config

```bash
cat ~/.kssh/config/config.rb

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
|               Kssh Tools                   |
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

## import[options]

```bash
cd ~/.kssh
# config csv hosts
cat hosts.csv
node01, 1.1.1.1
node02, 1.1.1.2
node03, 1.1.1.3

# import hosts config
rake import
```
