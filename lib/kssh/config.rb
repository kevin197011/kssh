# frozen_string_literal: true

# Copyright (c) 2024 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require 'yaml'

module Kssh
  class Config
    def self.load(file_path)
      YAML.load_file(file_path)
    end
  end
end
