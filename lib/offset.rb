class Offset
  attr_reader :date
  def initialize(date)
    @date = date
  end

  def squared
    @date * @date
  end

  def last_four
    last_4_dig = squared.to_s[-4..-1].to_i
  
  end
end
