require 'helper'

describe Array do
  describe '#to_bool' do
    it 'returns array with true when key value is 1' do
      expect([1].to_bool).to eql([true])
    end

    it 'returns array with false when key value is 0' do
      expect([0].to_bool).to eql([false])
    end

    it 'returns original array when key value is not 0 or 1' do
      expect([2].to_bool).to eql([2])
    end

    it "returns array with true when key value is 'yes'" do
      expect(['yes'].to_bool).to eql([true])
    end

    it "returns array with false when key value is 'no'" do
      expect(['no'].to_bool).to eql([false])
    end

    it "returns array with true when key value is 'true'" do
      expect(['true'].to_bool).to eql([true])
    end

    it "returns array with false when key value is 'false'" do
      expect(['false'].to_bool).to eql([false])
    end

    it "returns original array when key value is not 'yes', 'no', 'true' or 'false'" do
      expect(['value'].to_bool).to eql(['value'])
    end

    it 'returns array with true when key value is :t' do
      expect([:t].to_bool).to eql([true])
    end

    it 'returns array with false when key value is :f' do
      expect([:f].to_bool).to eql([false])
    end

    it 'returns array with true when key value is :t' do
      expect([:yes].to_bool).to eql([true])
    end

    it 'returns array with false when key value is :f' do
      expect([:f].to_bool).to eql([false])
    end

    it 'returns array with true when key value is :true' do
      expect([:true].to_bool).to eql([true])
    end

    it 'returns array with false when key value is :false' do
      expect([:false].to_bool).to eql([false])
    end

    it 'returns original array when key value is not :t or :n' do
      expect([:symbol].to_bool).to eql([:symbol])
    end

    it 'returns array with multiple correct values' do
      expect([1, 0, 'yes', 'false', :t, :f, :true, :false].to_bool).to eql([true, false, true, false, true, false, true, false])
    end

    it 'returns multi level array with correct values' do
      expect([[1, [0]]].to_bool).to eql([[true, [false]]])
    end
  end
end
