english_file = File.open(ARGV[0], "r")
english_message = english_file.read.upcase
decrypt_file = File.write(ARGV[1], english_message)

# puts "Created 'decrypted txt' with the key _ and date _"
