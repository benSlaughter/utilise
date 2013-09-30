require 'coveralls'

Coveralls.wear!
require 'to_bool'

RSpec.configure do |config|
  config.color_enabled  = true
  config.formatter      = :documentation
end