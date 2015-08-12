require 'bundler'
# This is the same as running 'bundle exec rake'
# All gems will be required at the correct version
Bundler.setup

require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'yard'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w(--color --format progress)
end

RuboCop::RakeTask.new(:rubocop) do |t|
  t.formatters = ['progress']
  t.patterns = ['lib/**/*.rb']
end

YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb']
  t.options = ['--list-undoc']
end

task :version do
  puts Utilise.version(true)
end

task default: %w(rubocop spec)
