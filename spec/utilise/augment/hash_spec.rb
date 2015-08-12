require 'spec_helper'

describe Hash do
  describe '#to_bool' do
    it 'returns hash with true when key value is 1' do
      expect({ 'key' => 1 }.to_bool).to eql('key' => true)
    end

    it 'returns hash with false when key value is 0' do
      expect({ 'key' => 0 }.to_bool).to eql('key' => false)
    end

    it 'returns original hash when key value is not 0 or 1' do
      expect({ 'key' => 2 }.to_bool).to eql('key' => 2)
    end

    it "returns hash with true when key value is 'yes'" do
      expect({ 'key' => 'yes' }.to_bool).to eql('key' => true)
    end

    it "returns hash with false when key value is 'no'" do
      expect({ 'key' => 'no' }.to_bool).to eql('key' => false)
    end

    it "returns hash with true when key value is 'true'" do
      expect({ 'key' => 'true' }.to_bool).to eql('key' => true)
    end

    it "returns hash with false when key value is 'false'" do
      expect({ 'key' => 'false' }.to_bool).to eql('key' => false)
    end

    it "returns original hash when key value is not 'yes', 'no', 'true or 'false'" do
      expect({ 'key' => 'value' }.to_bool).to eql('key' => 'value')
    end

    it 'returns hash with true when key value is :t' do
      expect({ 'key' => :t }.to_bool).to eql('key' => true)
    end

    it 'returns hash with false when key value is :f' do
      expect({ 'key' => :f }.to_bool).to eql('key' => false)
    end

    it 'returns hash with true when key value is :t' do
      expect({ 'key' => :yes }.to_bool).to eql('key' => true)
    end

    it 'returns hash with false when key value is :f' do
      expect({ 'key' => :no }.to_bool).to eql('key' => false)
    end

    it 'returns hash with true when key value is :true' do
      expect({ 'key' => :true }.to_bool).to eql('key' => true)
    end

    it 'returns hash with false when key value is :false' do
      expect({ 'key' => :false }.to_bool).to eql('key' => false)
    end

    it 'returns original hash when key value is not :t or :n' do
      expect({ 'key' => :symbol }.to_bool).to eql('key' => :symbol)
    end

    it 'returns correct hash with multiple values' do
      expect({ 'key0' => 1, 'key1' => 0, 'key2' => 'yes', 'key3' => 'false', 'key4' => :t, 'key4' => :f, 'key5' => :true, 'key6' => :false }.to_bool).to eql('key0' => true, 'key1' => false, 'key2' => true, 'key3' => false, 'key4' => true, 'key4' => false, 'key5' => true, 'key6' => false)
    end

    it 'returns correct multi-level hash with multiple values' do
      expect({ 'key0' => { 'key1' => 1 }, 'key2' => { 'key3' => 0 } }.to_bool).to eql('key0' => { 'key1' => true }, 'key2' => { 'key3' => false })
    end
  end
end
