require 'date'
require './lib/enigma'
require './lib/key_generator'
require_relative './spec_helper'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new

  end

  it "exists" do
    expect(@enigma).to be_a(Enigma)
  end
  #

  it "has a character set" do
    expect(@enigma.character_set).to be_a(Array)
    expect(@enigma.character_set).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end

  it "can split up a given message into separate characters" do
    expect(@enigma.message_split("hello world")).to eq(["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"])
  end

  xit "can create a shift using the offset and key" do
    expect(@enigma.shift(1234, 98765)).to eq(0)
  end

  xit "can encrypt a message with a key and date" do
    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq({
                                          encryption: "keder ohulw",
                                          key: "02715",
                                          date: "040895"})
  end
  #

  xit "can decrypt a message with a key and date" do
    expect(@enigma.decrypt("keder ohulw", "02175", "040895")).to eq({
                                                  decryption: "hello world",
                                                  key: "02175",
                                                  date: "040895"})
  end

  xit "can encrypt a message with a given key (uses today's date)" do
    expect(@enigma.encrypt("hello world", "02715").date).to eq("120622")
    expect(@enigma.encrypt("hello world", "02715")).to eq({
                                                      encryption: "hello world",
                                                      key: "02175",
                                                      date: "120622"})
  end

  xit "can decrypt a message with a given key (uses today's date)" do
    expect(@enigma.decrypt(encrypted[:encryption], "02715")).to eq({
                                                    decryption: "hello world",
                                                    key: "02175",
                                                    date: "120622"})
  end
end
