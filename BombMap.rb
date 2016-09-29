class BombMap
  attr_reader :map

  def initialize
    @map = create_map
    convert_to_two_dimenssions
  end

  def create_map
    Array.new(45)
  end

  def add_bombs
    number_of_bombs = 0

     while number_of_bombs <= 8 do
      address = rand(0..44)

      puts number_of_bombs

      if @map[address] == nil
        @map[address] = true
        number_of_bombs += 1
      end
    end
  end

  def convert_to_two_dimenssions
    @map.each_slice(5).to_a
  end
end

