require 'utilise/augment/bool.rb'
require 'utilise/augment/matchers.rb'
require 'utilise/augment/modify.rb'
require 'utilise/augment/time.rb'

# Extend existing ruby class String
class String
  include Utilise::Augment::Bool
  include Utilise::Augment::Modify
end

# Extend existing ruby class Fixnum
class Fixnum
  include Utilise::Augment::Bool
end

# Extend existing ruby class Symbol
class Symbol
  include Utilise::Augment::Bool
end

# Extend existing ruby class Object
class Object
  include Utilise::Augment::Matchers
end

# Extend existing ruby class Time
class Time
  extend Utilise::Augment::Time
end

# Extend existing ruby class Hash
class Hash
  include Utilise::Augment::Bool
end

# Extend existing ruby class Array
class Array
  include Utilise::Augment::Bool
end
