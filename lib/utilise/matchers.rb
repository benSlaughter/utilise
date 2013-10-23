module Utilise
  module Matchers
    def is_bool?
      case self.class
      when TrueClass, FalseClass
        true
      else
        false
      end
    end
  end
end