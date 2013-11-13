require 'helper'

describe TrueClass do
  describe "#to_bool" do
    it "returns true when matching" do
      expect(true.is_bool?).to be true
      expect(false.is_bool?).to be true
    end

    it "returns false when not matching" do
      expect("test".is_bool?).to be false
      expect(1.is_bool?).to be false
      expect(Array.new.is_bool?).to be false
    end
  end
end