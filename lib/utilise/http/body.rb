module Utilise
  module HTTP
    # Methods for interacting with a HTTP headers
    module Body
      module_function

      # Takes chunk encoded data and returns a string
      def decode_chunked_data(data)
        body = ''
        data = StringScanner.new(data)

        rest = loop do
          chunk_pos = data.pos
          chunk_size = data.scan(/[0-F]+ *\r\n/i)
          break data.rest unless chunk_size

          chunk_size = chunk_size.to_i(16)
          break nil if chunk_size.zero?

          chunk = data.scan(/.{#{chunk_size}}/)
          if chunk && data.skip(/\r?\n/i)
            body += chunk
          else
            data.pos = chunk_pos
            break data.rest
          end
        end

        [body, rest]
      end

      # Takes a string and returns chunk encoded data
      def encode_chunked_data(data)
        if data && data.length > 0
          "#{data.length.to_s(16)}\r\n#{data}\r\n"
        else
          chunked_data_close
        end
      end

      # returns the close for chunked data
      def chunked_data_close
        "0\r\n\r\n"
      end
    end
  end
end
