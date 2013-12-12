require 'rspec'
require_relative 'anagram_generator.rb'

describe AnagramGenerator do

  it 'returns an array' do
    expect(AnagramGenerator.new("dog").split_string).to be_an_instance_of(Array)
  end

  it "doesn't accept blank strings" do
    expect{(AnagramGenerator.new(" "))}.to raise_error(RuntimeError)
  end

  it "doesn't accept one-letter strings" do
    expect{(AnagramGenerator.new("a"))}.to raise_error(RuntimeError)
  end

  it "returns the reverse of two-letter strings" do
    expect(AnagramGenerator.new("ab").string).to eql("ba")
  end
  
end