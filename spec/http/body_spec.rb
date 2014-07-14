require 'helper'

describe Utilise::HTTP::Body do
  describe '#decode_chunked_data' do
    it 'decodes a valid chunked body' do
      expect(Utilise::HTTP::Body.decode_chunked_data("5\r\nhello\r\n0\r\n\r\n")).to eq ['hello', nil]
    end

    it 'returns any incomplete body data' do
      expect(Utilise::HTTP::Body.decode_chunked_data("5\r\nhello\r\n5\r\nhe")).to eq ['hello', "5\r\nhe"]
    end

    it 'returns any incomplete body data' do
      expect(Utilise::HTTP::Body.decode_chunked_data("5\r\nhello\r\n5\r\nhello")).to eq ['hello', "5\r\nhello"]
    end

    it 'returns any incomplete body data' do
      expect(Utilise::HTTP::Body.decode_chunked_data("5\r\nhello\r\n5\r\nhello\r\n")).to eq ['hellohello', '']
    end
  end
end
