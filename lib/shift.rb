require '../required_files'
class Shift
  include KeyGenerator
  attr_accessor :key,
              :date
  def initialize(key, date)
    @key = key
    @date = date
    @offset = Offset.new("110622")
  end

  def shifts
    #hard coded for now#
    {
      A: 02 + 6,
      B: 27 + 8,
      C: 71 + 8,
      D: 15 + 4
    }
  end
end
