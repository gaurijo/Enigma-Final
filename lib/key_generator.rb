require '../required_files'
module KeyGenerator
  def key_generator
    key = 5.times.map{rand(0..4)}.join
  end

  def string_to_array
    random_arr = key_generator.each_char.map(&:to_i)
  end

  def pairs
    consecutive_pairs = random_arr.each_cons(2).to_a
    consecutive_pairs.map do |pair|
      pair.join.to_i
    end
  end
end
