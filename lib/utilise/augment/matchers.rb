module Utilise
  module Augment
    # Extends classes that could be queried as a boolean
    module Matchers
      def bool?
        self.is_a?(TrueClass) || self.is_a?(FalseClass)
      end
    end
  end
end
