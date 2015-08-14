require 'utilise/augment/bool'
require 'utilise/augment/modify'

# Extend existing ruby class Symbol
class Symbol
  include Utilise::Augment::Bool
  include Utilise::Augment::Modify
end
