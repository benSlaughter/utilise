require 'utilise/augment/bool'
require 'utilise/augment/modify'

# Extend existing ruby class String
class String
  include Utilise::Augment::Bool
  include Utilise::Augment::Modify
end
