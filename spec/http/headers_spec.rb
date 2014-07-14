require 'helper'

describe Utilise::HTTP::Headers do
  describe '#headers_to_hash' do
    it 'can handle standard http headers' do
      expect(Utilise::HTTP::Headers.headers_to_hash('Host:www.example.com\r\nAccept:*\r\n\r\n')).to include(
        'Host' => 'www.example.com',
        'Accept' => '*'
      )
    end

    it 'removes any extra whitespace' do
      expect(Utilise::HTTP::Headers.headers_to_hash(' Host : www.example.com \r\n Accept : * \r\n \r\n')).to include(
        'Host' => 'www.example.com',
        'Accept' => '*'
      )
    end
  end
end
