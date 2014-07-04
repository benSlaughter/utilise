require 'utilise/augment/bool.rb'
require 'utilise/augment/matchers.rb'
require 'utilise/augment/time.rb'

class String
  include Utilise::Augment::Bool
end

class Fixnum
  include Utilise::Augment::Bool
end

class Symbol
  include Utilise::Augment::Bool
end

class Object
  include Utilise::Augment::Matchers
end

class Time
  extend Utilise::Augment::Time
end

class Hash
  include Utilise::Augment::Bool
end

class Array
  include Utilise::Augment::Bool
end
