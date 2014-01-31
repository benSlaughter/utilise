require 'helper'

describe String do
  describe "#to_bool" do
    it "returns true when true" do
      expect('true'.to_bool).to be true
    end

    it "returns true when yes" do
      expect('yes'.to_bool).to be true
    end

    it "returns true when t" do
      expect('t'.to_bool).to be true
    end

    it "returns true when 1" do
      expect('1'.to_bool).to be true
    end

    it "returns false when false" do
      expect('false'.to_bool).to be false
    end

    it "returns false when no" do
      expect('no'.to_bool).to be false
    end

    it "returns false when f" do
      expect('f'.to_bool).to be false
    end

    it "returns false when 0" do
      expect('0'.to_bool).to be false
    end

    it "returns nil when positive" do
      expect('positive'.to_bool).to be nil
    end

    it "returns nil when negative" do
      expect('negative'.to_bool).to be nil
    end
  end
end