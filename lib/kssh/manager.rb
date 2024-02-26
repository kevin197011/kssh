#!/usr/bin/env ruby
# frozen_string_literal: true

# Copyright (c) 2022 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require_relative 'config'
require_relative 'inventory'

module Kssh
  class Manager
    @@inventory_file = Kssh::Config.load("#{__dir__}/../../config/inventory.yml")
    @@ssh_inventory = Kssh::Inventory.new(@@inventory_file)

    def self.run
      # loop do
      #   puts "\nSSH Inventory Management:"
      #   puts '1. Add host'
      #   puts '2. List hosts'
      #   puts '3. Remove host'
      #   puts '4. Exit'
      #   print 'Enter your choice: '
      #   choice = gets.chomp.to_i

      #   case choice
      #   when 1
      #     print 'Enter host: '
      #     host = gets.chomp
      #     print 'Enter username: '
      #     username = gets.chomp
      #     print 'Enter password: '
      #     password = gets.chomp
      #     @@ssh_inventory.add_host(host, username, password)
      #   when 2
      #     @@ssh_inventory.list_hosts
      #   when 3
      #     print 'Enter host to remove: '
      #     host = gets.chomp
      #     @@ssh_inventory.remove_host(host)
      #   when 4
      #     break
      #   else
      #     puts 'Invalid choice. Please enter a valid option.'
      #   end
      # end
      puts @@ssh_inventory
    end
  end
end
