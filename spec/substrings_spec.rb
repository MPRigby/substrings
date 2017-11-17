#spec/substrings_spec.rb
require "substrings"

describe ".substrings" do

  context "given an empty input and an empty substring array" do
    it "returns empty hash" do
      expect(substrings("",[])).to eql({})
    end
  end

  context "given a string input with an empty substring array" do
    it "returns empty hash" do
      expect(substrings("Howdy.",[])).to eql({})
    end
  end

  let(:dictionary) {["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]}

  context "given an empty string input with a full substring array" do
    it "returns empty hash" do
      expect(substrings("", dictionary)).to eql({})
    end
  end

  context "given a one-word string input with a full substring array" do
    it "returns hash of substrings in input string" do
      expect(substrings("howdy!", dictionary)).to eql({"how" => 1, "howdy" => 1})
    end
  end

  context "given a string input containing capitalization" do
    it "finds substrings regardless of case" do
      expect(substrings("Howdy!", dictionary)).to eql({"how" => 1, "howdy" => 1})
    end
  end

  context "given a multi-word string input" do
    it "finds substrings throughout string" do
      expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eql({"down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1})
    end
  end

end
