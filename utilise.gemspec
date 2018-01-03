lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'utilise/version'

Gem::Specification.new do |spec|
  spec.name         = 'utilise'
  spec.summary      = 'Utilises a few extra methods'
  spec.description  = 'Extends a few ruby classes with helpful methods'
  spec.homepage     = 'http://benslaughter.github.io/utilise/'
  spec.version      = Utilise::VERSION
  spec.version      = "#{spec.version}-#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  spec.date         = Utilise::DATE
  spec.license      = 'MIT'

  spec.author       = 'Ben Slaughter'
  spec.email        = 'b.p.slaughter@gmail.com'

  spec.files = ['README.md', 'License.md']
  spec.files += Dir.glob('lib/**/*.rb')
  spec.files += Dir.glob('spec/**/*')

  spec.test_files   = Dir.glob('spec/**/*')
  spec.require_path = 'lib'

  spec.add_runtime_dependency 'hashie', '~> 3.4'

  spec.add_development_dependency 'coveralls', '~> 0.6'
  spec.add_development_dependency 'rake', '~> 10.4'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'rubocop', '~> 0.49'
  spec.add_development_dependency 'simplecov', '~> 0.10'
  spec.add_development_dependency 'yard', '~> 0.9.11'
end
