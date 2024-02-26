# frozen_string_literal: true

# Copyright (c) 2024 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require 'yaml'

module Kssh
  class Inventory
    def initialize(inventory_config)
      @inventory_config = inventory_config
    end

    def list_hosts
      puts 'SSH Inventory:'
      id = 1
      @inventory_config['hosts'].each do |host|
        puts "  [#{id}] => #{host['hostname']} (#{host['ip']})"
        id += 1
      end
    end

    def login_host(id)
      host = get_host(id)
      username = host['username'] || @inventory_config['default_username']
      key_path = host['key_path'] || @inventory_config['default_key_path']
      port = host['port'] || @inventory_config['default_port']
      system("ssh -i #{key_path} -p #{port} #{username}@#{host['ip']}")
    end

    private

    def get_host(id)
      @inventory_config['hosts'][id - 1]
    end
  end
end
