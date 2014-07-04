require 'helper'

describe Utilise::HTTP::FirstLine do
  describe "#type" do
    it "returns a symbol" do
      expect(Utilise::HTTP::FirstLine.type("string")).to be_a_kind_of(Symbol)
    end

    it "returns request on a request line" do
      expect(Utilise::HTTP::FirstLine.type("GET * HTTP/1.1")).to be :request
    end

    it "returns response on a response line" do
      expect(Utilise::HTTP::FirstLine.type("HTTP/1.1 200 OK")).to be :response
    end

    it "returns unknown on an unknown line" do
      expect(Utilise::HTTP::FirstLine.type("unknown")).to be :unknown
    end
  end
end
