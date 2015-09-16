module Utilise
  module Augment
    # Extends classes that could be modified
    module Modify
      # Return a string in modified camel case
      def camel
        array = split_up
        array.first + array[1..-1].map(&:capitalize).join('')
      end

      # Return a string in snake case
      def snake
        split_up.join('_')
      end

      # Return a string in regular space case
      def space
        split_up.join(' ')
      end

      private

      # Splits up the current string into an array and normalises it
      def split_up
        regex = /(?<=[a-z0-9])(?=[A-Z])|(?<=[A-Z])(?=[A-Z][a-z])|(?=_)|(?= )/
        arr = to_s.split(regex)
        arr.map!(&:downcase)
        arr.map!(&:strip)
        arr.map { |s| s.delete('_') }
      end
    end
  end
end
