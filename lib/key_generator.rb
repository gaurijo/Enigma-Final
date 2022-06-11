# module KeyGenerator
class KeyGenerator
  def key_generator
    key = 5.times.map{rand(0..4)}.join
  end

  def string_to_array
    key_generator.each_char.map(&:to_i)
  end
end
