require './lib/enigma'
require './lib/key_generator'
require './lib/offset'
require './lib/shift'
# require_relative './spec_helper'

RSpec.describe Shift do
  before :each do
    @a_shift = Shift.new("A")
    @b_shift = Shift.new("B")
    @c_shift = Shift.new("C")
    @d_shift = Shift.new("D")
    @enigma = Enigma.new
  end

  it "exists" do
    expect(@a_shift).to be_a(Shift)
  end

  it "has a name" do
    expect(@a_shift.name).to eq("A")
  end

  xit "can move a letter a given number of spaces" do

  end
end
