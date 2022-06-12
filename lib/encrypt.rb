english_file = File.open(ARGV[0], "r")
english_message = english_file.read.upcase
##NOTE: CHANGE .UPCASE TO .ENCRYPT AFTER CREATING METHOD
encrypt_file = File.write(ARGV[1], english_message)

puts "Created 'encrypted txt' with the key _ and date _"
