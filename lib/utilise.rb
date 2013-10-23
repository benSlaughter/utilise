require 'utilise/bool.rb'
require 'utilise/matchers.rb'
require 'utilise/version.rb'

class String
  include Utilise::Bool
end

class Fixnum
  include Utilise::Bool
end

class Symbol
  include Utilise::Bool
end

class Object
  include Utilise::Matchers
end