# module KeyGenerator
class KeyGenerator
  def key_generator
    key = 5.times.map{rand(0..4)}.join
    # require "pry"; binding.pry
  end

  def string_to_array
    random_arr = key_generator.each_char.map(&:to_i)
    # consecutive_pairs = random_arr.each_cons(2).to_a
    # consecutive_pairs.map do |pair|
    #   pair.join.to_i
  end


  def pairs
    random_arr = key_generator.each_char.map(&:to_i)
    consecutive_pairs = random_arr.each_cons(2).to_a
    consecutive_pairs.map do |pair|
      pair.join.to_i
    end
  end
end
