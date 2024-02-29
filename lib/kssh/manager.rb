#!/usr/bin/env ruby
# frozen_string_literal: true

# Copyright (c) 2024 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require_relative 'config'
require_relative 'inventory'

module Kssh
  class Manager
    @@inventory_config = Kssh::Config.load("#{__dir__}/../../config/kssh.yml")
    @@ssh_inventory = Kssh::Inventory.new(@@inventory_config)

    def self.run
      loop do
        banner
        choice = gets.chomp.to_i

        case choice
        when 1
          @@ssh_inventory.list_hosts
        when 2
          print 'Enter host id to login: '
          id = gets.chomp.to_i
          @@ssh_inventory.login_host(id)
        when 3
          break
        else
          puts 'Invalid choice. Please enter a valid option.'
        end
      end
    end

    private
    
    def self.banner
      puts "\nSSH Inventory Management:"
      puts '1. List hosts'
      puts '2. Login host'
      puts '3. Exit'
      print 'Enter your choice: '
    end
  end
end
