require 'helper'

describe Utilise::HTTP::FirstLine do
  describe '#type' do
    it 'returns a symbol' do
      expect(Utilise::HTTP::FirstLine.type('string')).to be_a_kind_of(Symbol)
    end

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
    it 'returns a array' do
      expect(Utilise::HTTP::FirstLine.split('GET * HTTP/1.1')).to be_a_kind_of(Array)
    end

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
end
