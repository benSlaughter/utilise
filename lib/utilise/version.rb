# Utilise
module Utilise
  # The current gem version
  VERSION = '1.2.0'.freeze
  # The version update date
  DATE = '2018-01-03'.freeze
  # Debug output message
  MSG = 'Version %<version>s %<date>s (running on %<engine>s-%<ruby>s)'.freeze

  module_function

  # Outputs the current gem version
  def version(debug = false)
    if debug
      format(MSG,
             version: VERSION,
             date: DATE,
             engine: RUBY_ENGINE,
             ruby: RUBY_VERSION)
    else
      VERSION
    end
  end
end
