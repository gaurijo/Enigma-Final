english_file = File.open(ARGV[0], "r")
english_message = english_file.read.upcase
encrypt_file = File.write(ARGV[1], english_message)

puts "created #{english_message} with the key #{encrypted_msg[:key]} and date #{encrypted_msg[:date]}"
