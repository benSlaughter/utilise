module Utilise
  module Augment
    # Extends time class to return a unique idetifier
    module Time
      # Returns a unique number
      def unique
        now.strftime('%s%3N')[-8..-1]
      end
    end
  end
end
