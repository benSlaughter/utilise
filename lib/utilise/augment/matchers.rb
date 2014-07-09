module Utilise
  module Augment
    # Extends classes that could be queried as a boolean
    module Matchers
      # queries wether the current object is a bool
      def bool?
        self.is_a?(TrueClass) || self.is_a?(FalseClass)
      end

      # NOTE: This keeps backwards compatability
      alias_method :is_bool?, :bool?
    end
  end
end
