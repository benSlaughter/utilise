require 'utilise/augment/crash.rb'

# Extend existing hashie module
module Hashie
  include Utilise::Augment::Crash
end
