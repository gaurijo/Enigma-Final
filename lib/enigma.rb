class Enigma
  # include KeyGenerator
  attr_reader :message, :key, :date, :character_set
  def initialize
    @message = message
    @key = key
    @date = date
    @character_set = character_set
  end

  def character_set
    ("a".."z").to_a << " "
  end

  # def encrypt(message)
  #   ##message should follow i/o to create encrypted msg
  #   ##key is generated randomly (using another method)
  #   ##date is date of transmission/today's date
  #   encrypted_msg = {}
  #   # encrypted_msg[:encryption] = message
  #   # encrypted_msg[:key] = key
  #   # encrypted_msg[:date] = date
  # end

  # def key_generator
  #   key = 5.times.map{rand(0..4)}.join
  # end

end
