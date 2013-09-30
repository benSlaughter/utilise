require 'helper'

describe String do
  describe "#to_b" do
    it "returns true when true" do
      expect('true'.to_b).to be true
    end

    it "returns true when yes" do
      expect('yes'.to_b).to be true
    end

    it "returns true when t" do
      expect('t'.to_b).to be true
    end

    it "returns true when 1" do
      expect('1'.to_b).to be true
    end

    it "returns false when false" do
      expect('false'.to_b).to be false
    end

    it "returns false when no" do
      expect('no'.to_b).to be false
    end

    it "returns false when f" do
      expect('f'.to_b).to be false
    end

    it "returns false when 0" do
      expect('0'.to_b).to be false
    end
  end
end