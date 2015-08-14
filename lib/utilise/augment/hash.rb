require 'utilise/string'

module Utilise
  module Augment
    # Extends a hash to modify keys
    module Hash
      # Transforms all keys to snake case
      def snake_keys
        transform_keys(self) { |key| key.snake }
      end

      # Transforms all keys to camel case
      def camel_keys
        transform_keys(self) { |key| key.camel }
      end

      # Transforms all keys to space case
      def space_keys
        transform_keys(self) { |key| key.space }
      end

      private

      # Deep transform keys
      # An awesome piece of code from rails
      # apidock.com/rails/v4.2.1/Hash/_deep_transform_keys_in_object%21
      def transform_keys(object, &block)
        case object
        when Hash
          object.each_with_object({}) do |(key, value), result|
            result[yield(key)] = transform_keys(value, &block)
          end
        when Array
          object.map { |e| transform_keys(e, &block) }
        else
          object
        end
      end
    end
  end
end
