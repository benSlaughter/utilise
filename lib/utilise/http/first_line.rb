require 'pry'

module Utilise
  module HTTP
    # Methods for interacting with a HTTP first line
    module FirstLine
      module_function

      REQUEST =
        %r{^(#{HTTP::METHODS.join('|')})\s(?:https?:\/\/)?(\S+)\sHTTP\/(\d)\.(\d)$}
      RESPONSE =
        /^HTTP\/(\d)\.(\d)\s(#{HTTP::STATUS.keys.join('|')})\s(#{HTTP::STATUS.values.join('|')})$/

      def type(data)
        data = data.chomp

        return :request if data[REQUEST]
        return :response if data[RESPONSE]
        :unknown
      end

      def split(data)
        data = data.chomp

        return REQUEST.match(data)[1, 4] if data[REQUEST]
        return RESPONSE.match(data)[1, 4] if data[RESPONSE]
        nil
      end
    end
  end
end
