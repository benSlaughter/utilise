module Utilise
  module Time
    def unique
      self.now.strftime("%s%3N")[-8..-1]
    end
  end
end