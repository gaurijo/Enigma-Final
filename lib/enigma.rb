class Enigma
  # include KeyGenerator
  attr_reader :message, :key, :date
  def initialize
    @message = message
    @key = key
    @date = date
  end

  def encrypt(message, key, date)
    ##message should follow i/o to create encrypted msg
    ##key is generated randomly (using another method)
    ##date is date of transmission/today's date
    encryption = {}
  end

  def key_generator
    key = 5.times.map{rand(0..4)}.join
  end

end
