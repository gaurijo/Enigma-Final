require 'date'
require './lib/enigma'
require_relative './spec_helper'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
  end

  it "exists" do
    expect(@enigma).to be_a(Enigma)
  end

  # it "has a message to be encrypted" do
  #   expect(@enigma.message).to eq("hello world")
  # end
  #
  # it "has a key as a string, using a random generated 5 digit number" do
  #   expect(@enigma.key).to eq("02715")
  # end
  #
  # it "has a date as a string in DDMMYY format" do
  #   expect(@enigma.date).to eq("040895")
  # end

  xit "can encrypt messages" do
    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq({
                            encryption: "keder ohulw",
                            key: "02715",
                            date: "040895"
                            })
  end
end
