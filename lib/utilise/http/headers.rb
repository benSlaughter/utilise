require 'hashie'

module Utilise
  module HTTP
    # Methods for interacting with a HTTP headers
    module Headers
      module_function

      # Takes the data and converts to a hash
      def headers_to_hash(data)
        headers = Hashie::Mash.new

        data.split('\r\n').each do | header |
          header.delete!(' ')
          next if header.empty?
          key, value = header.split(':')
          headers[key] = value
        end

        headers
      end
    end
  end
end
