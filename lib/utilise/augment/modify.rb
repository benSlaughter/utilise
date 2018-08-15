module Utilise
  module Augment
    # Extends classes that could be modified
    module Modify
      # Return a string in modified camel case
      def camel(first_letter = :upper)
        array = split_up
        case first_letter
        when :upper
          array.map(&:capitalize).join
        when :lower
          array.first + array[1..-1].map(&:capitalize).join
        end
      end

      # Return a string in snake case
      def snake
        split_up.join('_')
      end

      # Return a string in regular space case
      def space
        split_up.join(' ')
      end

      # Returns a string in kebab case
      def kebab
        split_up.join('-')
      end

      private

      # Splits up the current string into an array and normalises it
      def split_up
        regex = /(?<=[a-z0-9])(?=[A-Z])|(?<=[A-Z])(?=[A-Z][a-z])|(?=[-_ ])/
        arr = to_s.split(regex)
        arr.map!(&:downcase)
        arr.map!(&:strip)
        arr.map! { |s| s.delete('_') }
        arr.map { |s| s.delete('-') }
      end
    end
  end
end
