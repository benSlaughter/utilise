module Utilise
  module HTTP
    # Methods for interacting with a HTTP first line
    module FirstLine
      module_function

      # The regex that is used to verify a http request
      REQUEST =
        %r{^(#{HTTP::METHODS.join('|')})\s(?:https?:\/\/)?(\S+)\sHTTP\/(\d)\.(\d)$}
      # The regex that is used to verify a http response
      RESPONSE =
        /^HTTP\/(\d)\.(\d)\s(#{HTTP::STATUS.keys.join('|')})\s(#{HTTP::STATUS.values.join('|')})$/

      # Queries the data and retuens a symbol of the data type
      def type(data)
        data = data.chomp

        return :request if data[REQUEST]
        return :response if data[RESPONSE]
        :unknown
      end

      # Splits the first line into an array of data
      def split(data)
        data = data.chomp

        return REQUEST.match(data)[1, 4] if data[REQUEST]
        return RESPONSE.match(data)[1, 4] if data[RESPONSE]
        nil
      end
    end
  end
end
