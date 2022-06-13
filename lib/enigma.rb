require '../required_files'
class Enigma
  include KeyGenerator
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

  def message_split(message)
    message.split(//)
  end

  # def shift
  #   require "pry"; binding.pry
  #   @key.pairs
  # end

  def encrypt(message, key, date)
    encrypted_msg = {}
    encrypted_msg[:encryption] = message_split(message)
    encrypted_msg[:key] = key
    encrypted_msg[:date] = date
    return encrypted_msg
  end

end
