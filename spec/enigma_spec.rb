require 'date'
require './lib/enigma'
require './lib/key_generator'
require_relative './spec_helper'
require 'rspec'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
  end

  it "exists" do
    expect(@enigma).to be_a(Enigma)
  end

  it "has a character set" do
    expect(@enigma.character_set).to be_a(Array)
    expect(@enigma.character_set.count).to eq(27)
    expect(@enigma.character_set).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end


  it "can generate a random 5 digit key in the form of a string" do
    expect(@enigma.key_generator).to be_a(String)
  end



  # it "can encrypt a message with a key and date" do
  #   expect(@enigma.encrypt("hello world", "02715", "040895")).to eq({
  #                                         encryption: "keder ohulw",
  #                                         key: "02715",
  #                                         date: "040895"})
  # end


  it "can encrypt a message with a given key (uses today's date)" do
      encrypted = {
                  encryption: "lmjdshugvtb",
                  key: "02715",
                  date: "112122"}

    expect(@enigma.encrypt("hello world", "02715", "112122")).to eq(encrypted)
  end


  it "can encrypt a message (generates random key and uses today's date)" do
    expect(@enigma.encrypt("hello world", "31114", "112122")).to eq({
                                                encryption: "nxdcusofxdw",
                                                key: "31114",
                                                date: "112122"})
  end
end
