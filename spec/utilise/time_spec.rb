require 'spec_helper'

describe Time do
  describe '#unique' do
    it 'returns a string' do
      expect(Time.unique.class).to be String
    end

    it 'returns a string number' do
      expect(Time.unique).to match(/\d+/)
    end

    it 'returns a number from time to 3 decimal places' do
      expect(Time.unique).to eq Time.now.strftime('%s%3N')[-8..-1]
    end
  end
end
