lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'utilise/version'

Gem::Specification.new do |spec|
  spec.name         = 'utilise'
  spec.summary      = 'Utilises a few extra tools'
  spec.description  = 'Extends a few ruby classes with helpful tools, currently: X.to_bool'
  spec.homepage     = 'http://benslaughter.github.io/utilise/'
  spec.version      = Utilise::VERSION
  spec.version      = "#{spec.version}-#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  spec.date         = Utilise::DATE
  spec.license      = 'MIT'

  spec.author       = 'Ben Slaughter'
  spec.email        = 'b.p.slaughter@gmail.com'

  spec.files        = ['README.md', 'License.md']
  spec.files        += Dir.glob("lib/**/*.rb")
  spec.files        += Dir.glob("spec/**/*")
  spec.test_files   = Dir.glob("spec/**/*")
  spec.require_path = 'lib'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'rspec', '~> 2.13.0'
end
