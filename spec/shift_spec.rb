require './lib/enigma'
require './lib/key_generator'
require './lib/shift'
require './lib/offset'
require_relative './spec_helper'

RSpec.describe Shift do
  before :each do
  @offset = Offset.new("110622")
  @shift = Shift.new("02715", "110622")

  end

  it "exists" do
    expect(@shift).to be_a(Shift)
  end

  it "has a key" do
    expect(@shift.key).to eq("02715")
  end

  it "has a date" do
    expect(@shift.date).to eq("110622")
  end

  it "has a collection of 4 shifts - A, B, C, D, which is the sum of the key and last four digits in integer form" do
    expect(@shift.shifts).to eq({:A => 8, :B => 35, :C => 79, :D => 19})
  end
end
