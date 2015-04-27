module Utilise
  module Augment
    # Extends classes that could be modified
    module Modify
      def camel
        split_up.map(&:capitalize).join('')
      end

      def snake
        split_up.join('_')
      end

      def space
        split_up.join(' ')
      end

      private

      def split_up
        array = split(/(?=[A-Z_\s])/)
        array.map!(&:downcase)
        array.map!(&:strip)
        array.map { |s| s.delete('_') }
      end
    end
  end
end
