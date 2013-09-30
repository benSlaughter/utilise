require 'to_bool/bool.rb'
require 'to_bool/version.rb'

class String
  include Bool
end

class Fixnum
  include Bool
end