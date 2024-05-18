# kssh

kssh

## install

```bash
curl -fsSL https://raw.githubusercontent.com/kevin197011/kssh/main/deploy.sh | bash
```

## config

```bash
cd ~/.kssh
cat config/kssh.yml

---
default_username: root
default_key_path: ~/.ssh/id_rsa.key
default_port: 22
hosts:
  - { hostname: node01, ip: 1.1.1.1, username: root, key_path: ~/.ssh/id_rsa.key ,port: 22 }
  - { hostname: node02, ip: 1.1.1.2, username: root, key_path: ~/.ssh/id_rsa.key ,port: 22 }
  - { hostname: node03, ip: 1.1.1.3, username: root, key_path: ~/.ssh/id_rsa.key ,port: 22 }
  - { hostname: node04, ip: 1.1.1.4, username: root, key_path: ~/.ssh/id_rsa.key ,port: 22 }
  - { hostname: node05, ip: 1.1.1.5, username: root, key_path: ~/.ssh/id_rsa.key ,port: 22 }
```

## usage

```bash
kssh
```
