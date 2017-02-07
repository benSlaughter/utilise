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
      expect({ 'key0' => 1, 'key1' => 0, 'key2' => 'yes', 'key3' => 'false', 'key4' => :t, 'key5' => :f, 'key6' => :true, 'key7' => :false }.to_bool).to eql('key0' => true, 'key1' => false, 'key2' => true, 'key3' => false, 'key4' => true, 'key5' => false, 'key6' => true, 'key7' => false)
    end

    it 'returns correct multi-level hash with multiple values' do
      expect({ 'key0' => { 'key1' => 1 }, 'key2' => { 'key3' => 0 } }.to_bool).to eql('key0' => { 'key1' => true }, 'key2' => { 'key3' => false })
    end
  end

  describe '#snake_keys' do
    let(:hash) { { oneKey: 'aString', two_key: ['a_string'], 'red key' => { blueKey: 'testing 123' } } }

    it 'coverts all keys to snake case' do
      new_hash = hash.snake_keys
      expect(new_hash.key?('one_key')).to be_truthy
      expect(new_hash.key?('two_key')).to be_truthy
      expect(new_hash.key?('red_key')).to be_truthy
      expect(new_hash['red_key'].key?('blue_key')).to be_truthy
    end

    it 'does not transfer the old keys' do
      new_hash = hash.snake_keys
      expect(new_hash.key?(:oneKey)).to be_falsey
      expect(new_hash.key?(:two_key)).to be_falsey
      expect(new_hash.key?('red key')).to be_falsey
    end

    it 'does not convert the values' do
      new_hash = hash.snake_keys
      expect(new_hash['one_key']).to eql('aString')
      expect(new_hash['two_key']).to eql(['a_string'])
      expect(new_hash['red_key']).to be_a(Hash)
      expect(new_hash['red_key']['blue_key']).to eql('testing 123')
    end

    it 'does not modify the original hash' do
      old_hash = hash
      old_hash.snake_keys

      expect(old_hash.key?(:oneKey)).to be_truthy
      expect(old_hash.key?(:two_key)).to be_truthy
      expect(old_hash.key?('red key')).to be_truthy
      expect(old_hash['red key'].key?(:blueKey)).to be_truthy

      expect(old_hash[:oneKey]).to eql('aString')
      expect(old_hash[:two_key]).to eql(['a_string'])
      expect(old_hash['red key']).to be_a(Hash)
      expect(old_hash['red key'][:blueKey]).to eql('testing 123')
    end
  end

  describe '#camel_keys' do
    let(:hash) { { oneKey: 'aString', two_key: ['a_string'], 'red key' => { blueKey: 'testing 123' } } }

    it 'coverts all keys to camel case' do
      new_hash = hash.camel_keys
      expect(new_hash.key?('OneKey')).to be_truthy
      expect(new_hash.key?('TwoKey')).to be_truthy
      expect(new_hash.key?('RedKey')).to be_truthy
      expect(new_hash['RedKey'].key?('BlueKey')).to be_truthy
    end

    it 'does not transfer the old keys' do
      new_hash = hash.camel_keys
      expect(new_hash.key?(:oneKey)).to be_falsey
      expect(new_hash.key?(:two_key)).to be_falsey
      expect(new_hash.key?('red key')).to be_falsey
    end

    it 'does not convert the values' do
      new_hash = hash.camel_keys

      expect(new_hash['OneKey']).to eql('aString')
      expect(new_hash['TwoKey']).to eql(['a_string'])
      expect(new_hash['RedKey']).to be_a(Hash)
      expect(new_hash['RedKey']['BlueKey']).to eql('testing 123')
    end

    it 'does not modify the original hash' do
      old_hash = hash
      old_hash.camel_keys

      expect(old_hash.key?(:oneKey)).to be_truthy
      expect(old_hash.key?(:two_key)).to be_truthy
      expect(old_hash.key?('red key')).to be_truthy
      expect(old_hash['red key'].key?(:blueKey)).to be_truthy

      expect(old_hash[:oneKey]).to eql('aString')
      expect(old_hash[:two_key]).to eql(['a_string'])
      expect(old_hash['red key']).to be_a(Hash)
      expect(old_hash['red key'][:blueKey]).to eql('testing 123')
    end
  end

  describe '#space_keys' do
    let(:hash) { { oneKey: 'aString', two_key: ['a_string'], 'red key' => { blueKey: 'testing 123' } } }

    it 'coverts all keys to space case' do
      new_hash = hash.space_keys
      expect(new_hash.key?('one key')).to be_truthy
      expect(new_hash.key?('two key')).to be_truthy
      expect(new_hash.key?('red key')).to be_truthy
      expect(new_hash['red key'].key?('blue key')).to be_truthy
    end

    it 'does not transfer the old keys' do
      new_hash = hash.space_keys
      expect(new_hash.key?(:oneKey)).to be_falsey
      expect(new_hash.key?(:two_key)).to be_falsey
      expect(new_hash['red key'].key?(:blueKey)).to be_falsey
    end

    it 'does not convert the values' do
      new_hash = hash.space_keys

      expect(new_hash['one key']).to eql('aString')
      expect(new_hash['two key']).to eql(['a_string'])
      expect(new_hash['red key']).to be_a(Hash)
      expect(new_hash['red key']['blue key']).to eql('testing 123')
    end

    it 'does not modify the original hash' do
      old_hash = hash
      old_hash.space_keys

      expect(old_hash.key?(:oneKey)).to be_truthy
      expect(old_hash.key?(:two_key)).to be_truthy
      expect(old_hash.key?('red key')).to be_truthy
      expect(old_hash['red key'].key?(:blueKey)).to be_truthy

      expect(old_hash[:oneKey]).to eql('aString')
      expect(old_hash[:two_key]).to eql(['a_string'])
      expect(old_hash['red key']).to be_a(Hash)
      expect(old_hash['red key'][:blueKey]).to eql('testing 123')
    end
  end

  describe '#string_keys' do
    let(:hash) { { oneKey: 'aString', two_key: ['a_string'], redKey: { blue_key: 'testing 123' } } }

    it 'converts all keys to a string' do
      new_hash = hash.string_keys
      expect(new_hash.key?('oneKey')).to be_truthy
      expect(new_hash.key?('two_key')).to be_truthy
      expect(new_hash.key?('redKey')).to be_truthy
      expect(new_hash['redKey'].key?('blue_key')).to be_truthy
    end

    it 'does not keep the old keys' do
      new_hash = hash.string_keys
      expect(new_hash.key?(:oneKey)).to be_falsey
      expect(new_hash.key?(:two_key)).to be_falsey
      expect(new_hash.key?(:redKey)).to be_falsey
      expect(new_hash['redKey'].key?(:blue_key)).to be_falsey
    end

    it 'does not convert the values' do
      new_hash = hash.string_keys

      expect(new_hash['oneKey']).to eql(hash[:oneKey])
      expect(new_hash['two_key']).to eql(hash[:two_key])
      expect(new_hash['redKey']['blue_key']).to eql(hash[:redKey][:blue_key])
    end

    it 'does not modify the original hash' do
      new_hash = hash
      new_hash.string_keys

      expect(new_hash.key?(:oneKey)).to be_truthy
      expect(new_hash.key?(:two_key)).to be_truthy
      expect(new_hash.key?(:redKey)).to be_truthy
      expect(new_hash[:redKey].key?(:blue_key)).to be_truthy

      expect(new_hash[:oneKey]).to be(hash[:oneKey])
      expect(new_hash[:two_key]).to be(hash[:two_key])
      expect(new_hash[:redKey]).to be(hash[:redKey])
      expect(new_hash[:redKey][:blue_key]).to be(hash[:redKey][:blue_key])
    end
  end

  describe '#symbol_keys' do
    let(:hash) { { 'oneKey' => 'aString', 'two_key' => ['a_string'], 'redKey' => { 'blue_key' => 'testing 123' } } }

    it 'converts all keys to a symbol' do
      new_hash = hash.symbol_keys
      expect(new_hash.key?(:oneKey)).to be_truthy
      expect(new_hash.key?(:two_key)).to be_truthy
      expect(new_hash.key?(:redKey)).to be_truthy
      expect(new_hash[:redKey].key?(:blue_key)).to be_truthy
    end

    it 'does not keep the old keys' do
      new_hash = hash.symbol_keys
      expect(new_hash.key?('oneKey')).to be_falsey
      expect(new_hash.key?('two_key')).to be_falsey
      expect(new_hash.key?('redKey')).to be_falsey
      expect(new_hash[:redKey].key?('blue_key')).to be_falsey
    end

    it 'does not convert the values' do
      new_hash = hash.symbol_keys

      expect(new_hash[:oneKey]).to eql(hash['oneKey'])
      expect(new_hash[:two_key]).to eql(hash['two_key'])
      expect(new_hash[:redKey][:blue_key]).to eql(hash['redKey']['blue_key'])
    end

    it 'does not modify the original hash' do
      new_hash = hash
      new_hash.symbol_keys

      expect(new_hash.key?('oneKey')).to be_truthy
      expect(new_hash.key?('two_key')).to be_truthy
      expect(new_hash.key?('redKey')).to be_truthy
      expect(new_hash['redKey'].key?('blue_key')).to be_truthy

      expect(new_hash['oneKey']).to be(hash['oneKey'])
      expect(new_hash['two_key']).to be(hash['two_key'])
      expect(new_hash['redKey']).to be(hash['redKey'])
      expect(new_hash['redKey']['blue_key']).to be(hash['redKey']['blue_key'])
    end
  end
end
