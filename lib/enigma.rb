require '../required_files'
require 'date'
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

  def encrypt(message, key = key_generator, date)
    message_arr = message.split("")
    date = Date.today.strftime('%m%d%y')
    date = date.to_i 
    fdate = date ** 2
    last_four = fdate.to_s.split(//).last(4).join
    last_four_arr = last_four.split(//)
    a_offset = last_four_arr[0].to_i 
    b_offset = last_four_arr[1].to_i 
    c_offset = last_four_arr[2].to_i 
    d_offset = last_four_arr[3].to_i 
    a_key = key.to_s.split(//).first(2).join.to_i
    b_key = key.to_s.split(//)[1..2].join.to_i 
    c_key = key.to_s.split(//)[2..3].join.to_i 
    d_key = key.to_s.split(//)[3..4].join.to_i 

    a_shift = a_key + a_offset 
    b_shift = b_key + b_offset 
    c_shift = c_key + c_offset 
    d_shift = d_key + d_offset 

    encrypted_msg = []
    message_arr.each_with_index do |char, i|
      if !character_set.include?(char) == true 
        encrypted_msg << char
      elsif i % 4 == 0 
        encrypt1 = character_set.rotate((a_shift))[character_set.index(char)]
        encrypted_msg << encrypt1 
      elsif i % 4 == 1 
        encrypt2 = character_set.rotate((b_shift))[character_set.index(char)]
        encrypted_msg << encrypt2 
      elsif i % 4 == 2 
        encrypt3 = character_set.rotate((c_shift))[character_set.index(char)]
        encrypted_msg << encrypt3 
      elsif i % 4 == 3 
        encrypt4 = character_set.rotate((d_shift))[character_set.index(char)]
        encrypted_msg << encrypt4
      end
    end

    encrypted_msg

    hash = { 
        encryption: encrypted_msg.join, 
        key: "#{key}", 
        date: "#{date}"
    }
  end 
    # A SHIFT = A KEY + A OFFSET (12 + 1) = 13 
    # B SHIFT = B KEY + B OFFSET (23 + 0) = 23 
    # C SHIFT = C KEY + C OFFSET (33 + 2) = 35
    # D SHIFT = D KEY + D OFFSET (34 + 5) = 39 

    # "hello"
    # 'h' (A shift) -> 13 spaces => 'u'
    # 'e' (B shift) -> 23 spaces => 'y'
    # 'l' (C shift) -> 35 spaces => 't'
    # 'l' (D shift) -> 39 spaces => 'x'
    # 'o' (A shift) -> 13 spaces => 'a'

    # "hello" => "uytxa"


  # def decrypt(message, key, date)
  #   decrypted_msg = {}
  #   decrypted_msg[:decryption]
  #   decrypted_msg[:key] = key
  #   decrypted_msg[:date] = date
  #   return decrypted_msg
  # end
end
