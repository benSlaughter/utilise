require 'helper'

describe TrueClass do
  describe '#bool?' do
    it 'returns true when matching' do
      expect(true.bool?).to be true
    end
  end
end

describe FalseClass do
  describe '#bool?' do
    it 'returns true when matching' do
      expect(false.bool?).to be true
    end
  end
end

describe Object do
  describe '#bool?' do
    it 'returns false when not matching' do
      expect('true'.bool?).to be false
      expect(0.bool?).to be false
      expect(:false.bool?).to be false
    end
  end
end
