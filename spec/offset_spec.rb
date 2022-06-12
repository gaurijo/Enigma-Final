require './lib/enigma'
require './lib/key_generator'
require './lib/offset'
require 'date'
require_relative './spec_helper'

RSpec.describe Offset do
  before :each do
    @enigma = Enigma.new
    @offset = Offset.new(110622)
  end

  it "exists" do
    expect(@offset).to be_a(Offset)
  end

  it "has a date written in numeric DDMMYY format" do
    expect(@offset.date).to eq(110622)
  end
end
