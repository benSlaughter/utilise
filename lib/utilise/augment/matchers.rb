module Utilise
  module Augment
    # Extends classes that could be queried as a boolean
    module Matchers
      def bool?
        is_a?(TrueClass) || is_a?(FalseClass)
      end

      # NOTE: This keeps backwards compatibility
      alias is_bool? bool?
    end
  end
end
