lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'to_bool/version'

Gem::Specification.new do |spec|
  spec.name         = 'to_bool'
  spec.summary      = 'Converts strings and fixnum to boolean'
  spec.description  = 'Converts strings and fixnum to boolean'
  spec.homepage     = 'http://benslaughter.github.io/to_bool/'
  spec.version      = Bool::VERSION
  spec.date         = Bool::DATE
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