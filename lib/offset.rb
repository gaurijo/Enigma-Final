class Offset
  attr_reader :date
  def initialize(date)
    @date = date.to_i
  end

  def squared
    @date * @date
  end

  def last_four
    last_4_dig = squared.to_s[-4..-1].to_i
  end

  # def add_to_keys
end
