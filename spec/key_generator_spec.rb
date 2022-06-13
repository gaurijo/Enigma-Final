require './lib/enigma'
require './lib/key_generator'
require_relative './spec_helper'

RSpec.describe KeyGenerator do
  before :each do
    @enigma = Enigma.new
    # @key_generator = KeyGenerator.new
  end

  # it "exists" do
  #   expect(@key_generator).to be_a(KeyGenerator)
  # end

  it "assigns a random 5 digit number as a string to Enigma" do
    expect(@enigma.key_generator).to be_a(String)
  end

  # it "can convert the 5 digit string into an array" do
  #   expect(@enigma.string_to_array("12345")).to eq([1,2,3,4,5])
  # end
  #
  # it "can parse through an array to create consecutive pairs of digits" do
  #   expect(@enigma.pairs([1,2,3,4,5])).to eq([12, 23, 34, 45])
  # end
end
