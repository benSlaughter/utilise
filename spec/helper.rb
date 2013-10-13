require 'coveralls'

Coveralls.wear!
require 'utilise'

RSpec.configure do |config|
  config.color_enabled  = true
  config.formatter      = :documentation
end