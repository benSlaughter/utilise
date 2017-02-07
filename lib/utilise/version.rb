# Utilise
module Utilise
  # The current gem version
  VERSION = '1.1.0'.freeze
  # The version update date
  DATE = '2017-02-07'.freeze
  # Debug output message
  MSG = 'Version %s %s (running on %s-%s)'.freeze

  module_function

  # Outputs the current gem version
  def version(debug = false)
    if debug
      format(MSG, VERSION, DATE, RUBY_ENGINE,
             RUBY_VERSION)
    else
      VERSION
    end
  end
end
