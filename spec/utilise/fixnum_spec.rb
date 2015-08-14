require 'spec_helper'

describe Fixnum do
  describe '#to_bool' do
    it 'returns true when 1' do
      expect(1.to_bool).to be true
    end

    it 'returns false when 0' do
      expect(0.to_bool).to be false
    end

    it 'returns nil when not 0 or 1' do
      expect(2.to_bool).to be nil
    end
  end
end
