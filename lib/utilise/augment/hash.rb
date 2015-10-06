require 'utilise/string'

module Utilise
  module Augment
    # Extends a hash to modify keys
    module Hash
      # Transforms all keys to snake case
      def snake_keys
        utilise_deep_transform_keys(self) { |key| key.snake }
      end

      # Transforms all keys to camel case
      def camel_keys
        utilise_deep_transform_keys(self) { |key| key.camel }
      end

      # Transforms all keys to space case
      def space_keys
        utilise_deep_transform_keys(self) { |key| key.space }
      end

      private

      # Deep transform keys in object
      # An awesome piece of code from rails
      # http://apidock.com/rails/Hash/_deep_transform_keys_in_object
      def utilise_deep_transform_keys(object, &block)
        case object
        when Hash
          object.each_with_object({}) do |(key, value), result|
            result[yield(key)] = utilise_deep_transform_keys(value, &block)
          end
        when Array
          object.map { |e| utilise_deep_transform_keys(e, &block) }
        else
          object
        end
      end
    end
  end
end
