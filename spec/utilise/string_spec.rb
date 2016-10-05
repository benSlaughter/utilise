require 'spec_helper'

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
    context 'default option' do
      it 'returns a camel case from camel case' do
        expect('CamelCase'.camel).to eq 'CamelCase'
      end

      it 'returns a camel case from numeric camel case' do
        expect('Camel1Case'.camel).to eq 'Camel1Case'
      end

      it 'returns a camel case from snake case' do
        expect('camel_case'.camel).to eq 'CamelCase'
      end

      it 'returns a camel case from numeric snake case' do
        expect('camel1_case'.camel).to eq 'Camel1Case'
      end

      it 'returns a camel case from space case' do
        expect('camel case'.camel).to eq 'CamelCase'
      end

      it 'returns a camel case from numeric space case' do
        expect('camel1 case'.camel).to eq 'Camel1Case'
      end

      it 'returns a camel case from complex camel case' do
        expect('CamelONECase'.camel).to eq 'CamelOneCase'
      end
    end

    context 'lower option' do
      it 'returns a camel case from camel case' do
        expect('CamelCase'.camel(:lower)).to eq 'camelCase'
      end

      it 'returns a camel case from numeric camel case' do
        expect('Camel1Case'.camel(:lower)).to eq 'camel1Case'
      end

      it 'returns a camel case from snake case' do
        expect('camel_case'.camel(:lower)).to eq 'camelCase'
      end

      it 'returns a camel case from numeric snake case' do
        expect('camel1_case'.camel(:lower)).to eq 'camel1Case'
      end

      it 'returns a camel case from space case' do
        expect('camel case'.camel(:lower)).to eq 'camelCase'
      end

      it 'returns a camel case from numeric space case' do
        expect('camel1 case'.camel(:lower)).to eq 'camel1Case'
      end

      it 'returns a camel case from complex camel case' do
        expect('CamelONECase'.camel(:lower)).to eq 'camelOneCase'
      end
    end
  end

  describe '#snake' do
    it 'returns a snake case from camel case' do
      expect('SnakeCase'.snake).to eq 'snake_case'
    end

    it 'returns a snake case from numeric camel case' do
      expect('Snake1Case'.snake).to eq 'snake1_case'
    end

    it 'returns a snake case from snake case' do
      expect('snake_case'.snake).to eq 'snake_case'
    end

    it 'returns a snake case from numeric snake case' do
      expect('snake1_case'.snake).to eq 'snake1_case'
    end

    it 'returns a snake case from space case' do
      expect('snake case'.snake).to eq 'snake_case'
    end

    it 'returns a snake case from numeric space case' do
      expect('snake1 case'.snake).to eq 'snake1_case'
    end

    it 'returns a snake case from complex camel case' do
      expect('SnakeONECase'.snake).to eq 'snake_one_case'
    end
  end

  describe '#space' do
    it 'returns a space case from camel case' do
      expect('SpaceCase'.space).to eq 'space case'
    end

    it 'returns a space case from numeric camel case' do
      expect('SpaceCase'.space).to eq 'space case'
    end

    it 'returns a space case from snake case' do
      expect('space_case'.space).to eq 'space case'
    end

    it 'returns a space case from numeric snake case' do
      expect('space1_case'.space).to eq 'space1 case'
    end

    it 'returns a space case from space case' do
      expect('space case'.space).to eq 'space case'
    end

    it 'returns a space case from numeric space case' do
      expect('space1 case'.space).to eq 'space1 case'
    end

    it 'returns a space case from complex camel case' do
      expect('SpaceONECase'.space).to eq 'space one case'
    end
  end
end
