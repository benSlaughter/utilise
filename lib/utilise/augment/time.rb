module Utilise
  module Augment
    # Extends time class to return a unique idetifier
    module Time
      # returns a uniqe number based off of ruby time
      def unique
        now.strftime('%s%3N')[-8..-1]
      end
    end
  end
end
