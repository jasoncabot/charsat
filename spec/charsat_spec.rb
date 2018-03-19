RSpec.describe CharsAt do
  it "has a version number" do
    expect(CharsAt::VERSION).not_to be nil
  end

  it "should parse valid input" do
    CharsAt::Model.new("jason", [1, 2, 3, 4, 5]).parsed == ["j", "a", "s", "o", "n"]
  end

  it "should parse nothing on empty indices" do
    CharsAt::Model.new("jason", []).parsed == []
  end

  it "should parse nothing on empty content" do
    CharsAt::Model.new("", [1, 2, 3]).parsed == []
  end

  it "should parse nothing on an index beyond string length" do
    CharsAt::Model.new("jason", [99]).parsed == []
  end

  it "should parse nothing on a negative string index" do
    CharsAt::Model.new("jason", [-1]).parsed == []
  end
end
