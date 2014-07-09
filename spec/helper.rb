require 'coveralls'
require 'pry'

Coveralls.wear!
require 'utilise'

RSpec.configure do |config|
  config.formatter      = :documentation
end
