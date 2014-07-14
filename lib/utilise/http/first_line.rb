require 'uri'

module Utilise
  module HTTP
    # Methods for interacting with a HTTP first line
    module FirstLine
      module_function

      # The regex that is used to verify a http request
      REQUEST =
        %r{^(#{HTTP::METHODS.join('|')})\s((?:https?\:\/\/)?\S+)\sHTTP\/(\d)\.(\d)}
      # The regex that is used to verify a http response
      RESPONSE =
        /^HTTP\/(\d)\.(\d)\s(#{HTTP::STATUS.keys.join('|')})\s(#{HTTP::STATUS.values.join('|')})/

      # Queries the data and retuens a symbol of the data type
      def type(data)
        return :request if data[REQUEST]
        return :response if data[RESPONSE]
        :unknown
      end

      # Splits the first line into an array of data
      def split(data)
        return REQUEST.match(data)[1, 4] if data[REQUEST]
        return RESPONSE.match(data)[1, 4] if data[RESPONSE]
      end

      def verb(data)
        return REQUEST.match(data)[1] if data[REQUEST]
      end

      def uri(data)
        return URI(REQUEST.match(data)[2]) if data[REQUEST]
      end

      def http_version(data)
        return REQUEST.match(data)[3, 4] if data[REQUEST]
        return RESPONSE.match(data)[1, 2] if data[RESPONSE]
      end

      def status_code(data)
        return RESPONSE.match(data)[3] if data[RESPONSE]
      end

      def status_phrase(data)
        return RESPONSE.match(data)[4] if data[RESPONSE]
      end
    end
  end
end
