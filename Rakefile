require 'bundler/gem_tasks'
require 'rake/version_task'
require 'rspec/core/rake_task'

Rake::VersionTask.new

desc 'Run unit tests'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.rspec_opts = ['--color --format progress']
end

task :default => 'spec'
