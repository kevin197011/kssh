# frozen_string_literal: true

# config host list
@kssh_hosts = [
  { 'name': 'devops-node1', 'ip': '1.2.3.1', 'username': 'root', 'method': 'key', 'passwdOrKey': 'id_rsa' },
  { 'name': 'devops-node2', 'ip': '1.2.3.2', 'username': 'root', 'method': 'key', 'passwdOrKey': 'id_rsa' },
  { 'name': 'devops-node3', 'ip': '1.2.3.3', 'username': 'root', 'method': 'key', 'passwdOrKey': 'id_rsa' }
].freeze
