require 'helper'

describe Utilise::HTTP::FirstLine do
  describe '#type' do
    it 'returns request on a request firstline' do
      expect(Utilise::HTTP::FirstLine.type('GET * HTTP/1.1')).to be :request
    end

    it 'returns response on a response firstline' do
      expect(Utilise::HTTP::FirstLine.type('HTTP/1.1 200 OK')).to be :response
    end

    it 'returns unknown on an unknown firstline' do
      expect(Utilise::HTTP::FirstLine.type('unknown')).to be :unknown
    end
  end

  describe '#split' do
    it 'returns an array of request elements' do
      expect(Utilise::HTTP::FirstLine.split('GET * HTTP/1.1')).to match_array %w(GET * 1 1)
    end

    it 'returns an array of request elements' do
      expect(Utilise::HTTP::FirstLine.split('HTTP/1.1 200 OK')).to match_array %w(1 1 200 OK)
    end

    it 'returns nil if firstline unknown' do
      expect(Utilise::HTTP::FirstLine.split('unknown')).to be_nil
    end
  end

  describe '#verb' do
    it 'returns the verb for a response' do
      expect(Utilise::HTTP::FirstLine.verb('GET * HTTP/1.1')).to eq 'GET'
    end

    it 'returns nil for a request' do
      expect(Utilise::HTTP::FirstLine.verb('HTTP/1.1 200 OK')).to be_nil
    end

    it 'returns nil for an unknown' do
      expect(Utilise::HTTP::FirstLine.verb('unknown')).to be_nil
    end
  end

  describe '#uri' do
    it 'returns the uri for a response' do
      expect(Utilise::HTTP::FirstLine.uri('GET * HTTP/1.1')).to be_a URI::Generic
    end

    it 'returns nil for a request' do
      expect(Utilise::HTTP::FirstLine.uri('HTTP/1.1 200 OK')).to be_nil
    end

    it 'returns nil for an unknown' do
      expect(Utilise::HTTP::FirstLine.uri('unknown')).to be_nil
    end
  end

  describe '#http_version' do
    it 'returns the http_version for a response' do
      expect(Utilise::HTTP::FirstLine.http_version('GET * HTTP/1.1')).to eq ['1', '1']
    end

    it 'returns the http_version for a request' do
      expect(Utilise::HTTP::FirstLine.http_version('HTTP/1.1 200 OK')).to eq ['1', '1']
    end

    it 'returns nil for an unknown' do
      expect(Utilise::HTTP::FirstLine.http_version('unknown')).to be_nil
    end
  end

  describe '#status_code' do
    it 'returns nil for a response' do
      expect(Utilise::HTTP::FirstLine.status_code('GET * HTTP/1.1')).to be_nil
    end

    it 'returns the status code for a request' do
      expect(Utilise::HTTP::FirstLine.status_code('HTTP/1.1 200 OK')).to eq '200'
    end

    it 'returns nil for an unknown' do
      expect(Utilise::HTTP::FirstLine.status_code('unknown')).to be_nil
    end
  end

  describe '#status_phrase' do
    it 'returns nil for a response' do
      expect(Utilise::HTTP::FirstLine.status_phrase('GET * HTTP/1.1')).to be_nil
    end

    it 'returns the status phrase for a request' do
      expect(Utilise::HTTP::FirstLine.status_phrase('HTTP/1.1 200 OK')).to eq 'OK'
    end

    it 'returns nil for an unknown' do
      expect(Utilise::HTTP::FirstLine.status_phrase('unknown')).to be_nil
    end
  end
end
