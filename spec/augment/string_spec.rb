require 'helper'

describe String do
  describe '#to_bool' do
    it 'returns true when true' do
      expect('true'.to_bool).to be true
    end

    it 'returns true when yes' do
      expect('yes'.to_bool).to be true
    end

    it 'returns true when t' do
      expect('t'.to_bool).to be true
    end

    it 'returns true when 1' do
      expect('1'.to_bool).to be true
    end

    it 'returns false when false' do
      expect('false'.to_bool).to be false
    end

    it 'returns false when no' do
      expect('no'.to_bool).to be false
    end

    it 'returns false when f' do
      expect('f'.to_bool).to be false
    end

    it 'returns false when 0' do
      expect('0'.to_bool).to be false
    end

    it 'returns nil when positive' do
      expect('positive'.to_bool).to be nil
    end

    it 'returns nil when negative' do
      expect('negative'.to_bool).to be nil
    end
  end

  describe '#camel' do
    it 'returns a camel case from camel case' do
      expect('CamelCase'.camel).to eq 'CamelCase'
    end

    it 'returns a camel case from snake case' do
      expect('camel_case'.camel).to eq 'CamelCase'
    end

    it 'returns a camel case from space case' do
      expect('camel case'.camel).to eq 'CamelCase'
    end
  end

  describe '#snake' do
    it 'returns a snake case from camel case' do
      expect('SnakeCase'.snake).to eq 'snake_case'
    end

    it 'returns a snake case from snake case' do
      expect('snake_case'.snake).to eq 'snake_case'
    end

    it 'returns a snake case from space case' do
      expect('snake case'.snake).to eq 'snake_case'
    end
  end

  describe '#space' do
    it 'returns a space case from camel case' do
      expect('SpaceCase'.space).to eq 'space case'
    end

    it 'returns a space case from snake case' do
      expect('space_case'.space).to eq 'space case'
    end

    it 'returns a space case from space case' do
      expect('space case'.space).to eq 'space case'
    end
  end
end
