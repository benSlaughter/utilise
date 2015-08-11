require 'spec_helper'

describe Utilise::Augment::Crash::Bash do
  describe '.new' do
    it 'returns a new hashie bash' do
      expect(Hashie::Bash.new).to be_an_instance_of(Utilise::Augment::Crash::Bash)
    end
  end

  context 'a bash with keys' do
    before do
      @hash = Hashie::Bash.new(a:1, b:{ c: 2, d: { e: 3, f: {} } })
    end

    it 'has first layer keys' do
      expect(@hash.a).to eql(1)
    end

    it 'has second layer keys' do
      expect(@hash.b.c).to eql(2)
    end

    it 'has third layer keys' do
      expect(@hash.b.d.e).to eql(3)
    end

    it 'raises an error on the first layer' do
      expect { @hash.x }.to raise_error(NameError)
    end

    it 'raises an error on the second layer' do
      expect { @hash.b.y }.to raise_error(NameError)
    end

    it 'raises an error on the third layer' do
      expect { @hash.b.d.z }.to raise_error(NameError)
    end

    it 'raises the correct error' do
      expect { @hash.x }.to raise_error(/No value for:\w+ in .+/)
    end
  end
end
