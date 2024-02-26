# frozen_string_literal: true

# Copyright (c) 2024 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

module Kssh
  class Error < StandardError; end
  # Your code goes here...
end

Dir.glob(File.join(File.dirname(__FILE__), 'kssh/*.rb')).each do |r|
  require_relative "kssh/#{File.basename(r, '.rb')}"
end
