require "bundler/gem_tasks"
require 'rspec/core/rake_task'

task :default => :spec
task :spec => ['spec:1.8', 'spec:1.9']

namespace :spec do
  task '1.8' do
    sh "/bin/bash -c 'rvm 1.8.7@celebration rake spec:just_run'"
  end

  task '1.9' do
    sh "/bin/bash -c 'rvm 1.9.2@celebration rake spec:just_run'"
  end

  RSpec::Core::RakeTask.new(:just_run)
end
