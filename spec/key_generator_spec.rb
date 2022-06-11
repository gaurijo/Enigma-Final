require './lib/enigma'
require './lib/key_generator'
require_relative './spec_helper'

RSpec.describe KeyGenerator do
  before :each do
    @enigma = Enigma.new
    @key_generator = KeyGenerator.new
  end

  it "exists" do
    expect(@key_generator).to be_a(KeyGenerator)
  end

  it "assigns a random 5 digit number as a string to Enigma" do
    expect(@enigma.key_generator).to be_a(String)
  end
end
