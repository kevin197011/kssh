# frozen_string_literal: true

task default: [:run]

task :run do
  sh 'rubocop -A'
  sh 'git add .'
  sh 'git commit -m "update."'
  sh 'git push -u origin main'
end
