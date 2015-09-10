# Utilise
module Utilise
  # The current gem version
  VERSION = '0.6.0'
  # The version update date
  DATE = '2015-09-10'
  # Debug output message
  MSG = 'Version %s %s (running on %s-%s)'

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
