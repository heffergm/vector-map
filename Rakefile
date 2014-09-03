#!/usr/bin/env rake

desc 'Run integration tests'
task :build do
  sandbox = File.join(File.dirname(__FILE__), %w(tmp tests))
  prepare_sandbox(sandbox)

  # Check ruby syntax
  #
  puts 'Running rubocop'
  sh "rubocop #{File.dirname(sandbox)}/tests"
end

task default: 'build'

private

def prepare_sandbox(sandbox)
  files = %w(Rakefile *.rb)

  puts 'Preparing sandbox'
  rm_rf sandbox
  mkdir_p sandbox
  cp_r Dir.glob("{#{files.join(',')}}"), sandbox
end
