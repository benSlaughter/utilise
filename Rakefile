require 'rubygems'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'yard'

desc 'Run all examples'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w(--color --format progress)
end

RuboCop::RakeTask.new(:rubocop) do |t|
  t.formatters = ['progress']
  t.patterns = ['lib/**/*.rb']
end

YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb']
  # t.options = ['--any', '--extra', '--opts'] # optional
  # t.options = ['--list-undoc'] # optional
end

task default: [:spec, :rubocop]
