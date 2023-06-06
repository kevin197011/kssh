# frozen_string_literal: true

require 'csv'
require 'erb'
require 'fileutils'

task default: [:run]

task :run do
  sh 'rubocop -A'
  sh 'git add .'
  sh 'git commit -m "update."'
  sh 'git push -u origin main'
end

task :import do
  @data = CSV.read "#{File.dirname(__FILE__)}/hosts.csv"
  FileUtils.cp "#{File.dirname(__FILE__)}/config/config.rb", "#{File.dirname(__FILE__)}/config/config.rb.bak"

  File.open("#{File.dirname(__FILE__)}/config/config.rb", 'w') do |f|
    tpl = File.read("#{File.dirname(__FILE__)}/tpl/config.rb.erb")
    f.write(ERB.new(tpl, trim_mode: '-').result(binding))
  end
end
