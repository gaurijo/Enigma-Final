require './lib/enigma'
require './lib/key_generator'
# require_relative './spec_helper'

RSpec.describe KeyGenerator do
  before :each do
    @enigma = Enigma.new
  end

  it "assigns a random 5 digit number as a string to Enigma" do
    expect(@enigma.key_generator).to be_a(String)
  end

  xit "can convert the 5 digit string into an array" do
    # allow(Enigma).to receive(:string_to_array).and_return Enigma.new("12345")
    # expect(@enigma.string_to_array("12345")).to eq([1,2,3,4,5])
  end
  #

end
