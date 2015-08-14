require 'utilise/augment/bool'
require 'utilise/augment/hash'

# Extend existing ruby class Hash
class Hash
  include Utilise::Augment::Bool
  include Utilise::Augment::Hash
end
