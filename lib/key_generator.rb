# module KeyGenerator
class KeyGenerator
  def key_generator
    key = 5.times.map{rand(0..4)}.join
  end
end
