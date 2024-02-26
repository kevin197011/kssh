# frozen_string_literal: true

# Copyright (c) 2024 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require 'yaml'

module Kssh
  class Inventory
    def initialize(file_path)
      @file_path = file_path
      load_inventory
    end

    def add_host(host, username, password)
      @inventory[host] = { username: username, password: password }
      save_inventory
      puts "Host #{host} added to inventory."
    end

    def list_hosts
      puts 'SSH Inventory:'
      @inventory.each do |host, info|
        puts "Host: #{host}, Username: #{info[:username]}, Password: #{info[:password]}"
      end
    end

    def remove_host(host)
      if @inventory.delete(host)
        save_inventory
        puts "Host #{host} removed from inventory."
      else
        puts "Host #{host} not found in inventory."
      end
    end

    private

    def load_inventory
      @inventory = File.exist?(@file_path) ? YAML.load_file(@file_path) : {}
    end

    def save_inventory
      File.open(@file_path, 'w') { |file| file.write(@inventory.to_yaml) }
    end
  end
end
