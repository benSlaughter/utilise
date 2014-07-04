require 'helper'

describe TrueClass do
  describe "#is_bool?" do
    it "returns true when matching" do
      expect(true.is_bool?).to be true
    end
  end
end

describe FalseClass do
  describe "#is_bool?" do
    it "returns true when matching" do
      expect(false.is_bool?).to be true
    end
  end
end

describe Object do
  describe "#is_bool?" do
    it "returns false when not matching" do
      expect("true".is_bool?).to be false
      expect(0.is_bool?).to be false
      expect(:false.is_bool?).to be false
    end
  end
end