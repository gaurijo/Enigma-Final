require './lib/enigma'
require './lib/key_generator'
require './lib/offset'
require 'date'
require 'time'
# require_relative './spec_helper'

RSpec.describe Offset do
  before :each do
    @enigma = Enigma.new
    @offset = Offset.new("110622")
    @time = Time.new
  end

  it "exists" do
    expect(@offset).to be_a(Offset)
  end

  it "has a date written in numeric DDMMYY format" do
    expect(@offset.date).to eq(110622)
  end

  it "can square its numeric date" do
    expect(@offset.squared).to eq(12237226884)
  end

  it "returns the last 4 digits of its squared numeric date" do
    expect(@offset.last_four).to eq(6884)
  end


  it "can create a date in DDMMYY format if no date is given" do
    allow(Offset).to receive(:format_date).and_return Offset.new("06-12-2022")
    # expect(@offset.format_date("06-12-2022")).to eq(120622)
  end
end
#
#   # it "can be added to keys to create final shifts" do
#   #
#   #   expect(@offset.add_to_keys).to be_a(Array)
#   # end
#
# end
