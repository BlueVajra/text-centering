require 'spec_helper'
require 'center_it'

describe CenterIt do
  it "centers all text in a file" do
    string = "ab\nabcd"
    actual = CenterIt.new(string).center
    expected = " ab
abcd"
    expect(actual).to eq expected
  end

  it "centers even when odd length" do
    string = "abc\nabcdef"
    actual = CenterIt.new(string).center
    expected = " abc
abcdef"
    expect(actual).to eq expected
  end

  it "centers text and ignores whitespace" do
    string = "       abc\nabcdef"
    actual = CenterIt.new(string).center
    expected = " abc
abcdef"
    expect(actual).to eq expected
  end
end