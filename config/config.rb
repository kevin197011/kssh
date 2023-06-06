# frozen_string_literal: true

# config host list
@kssh_hosts = [
  { 'name': 'node01', 'ip': '1.1.1.1', 'username': 'root', 'method': 'key', 'passwdOrKey': 'id_rsa' },
  { 'name': 'node02', 'ip': '1.1.1.2', 'username': 'root', 'method': 'key', 'passwdOrKey': 'id_rsa' },
  { 'name': 'node03', 'ip': '1.1.1.3', 'username': 'root', 'method': 'key', 'passwdOrKey': 'id_rsa' }
].freeze
