require 'utilise/augment/bool.rb'
require 'utilise/augment/modify.rb'

# Extend existing ruby class String
class String
  include Utilise::Augment::Bool
  include Utilise::Augment::Modify
end
