require 'spec_helper'

describe Utilise do
  describe '.version' do
    it 'should return the current gem version' do
      expect(Utilise.version).to eq('1.1.0')
    end

    it 'should return the current gem version with debug information' do
      expect(Utilise.version(true)).to match(/Version \d\.\d\.\d \d{4}-\d{2}-\d{2} \(running on ruby\-\d+\.\d+\.\d+\)/)
    end
  end
end
