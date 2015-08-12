module Utilise
  module Augment
    # Extends classes that could be queried as a boolean
    module Matchers
      def bool?
        self.is_a?(TrueClass) || self.is_a?(FalseClass)
      end

      # NOTE: This keeps backwards compatibility
      alias_method :is_bool?, :bool?
    end
  end
end
