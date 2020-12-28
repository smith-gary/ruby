class Pet 
    attr_accessor :name, :owner_name

end

class Pony < Pet

    def neigh
        return "neeiigghh"
    end

end

class Dragon < Pet

    def roar
        return "roooaarr"
    end
end

my_pony = Pony.new
my_pony.name = "Fred"
pony_name = my_pony.name
puts "#{pony_name} says #{my_pony.neigh}."

my_dragon = Dragon.new
my_dragon.name = "Ted"
dragon_name = my_dragon.name
puts "#{dragon_name} says #{my_dragon.roar}."

puts my_pony.inspect
puts my_dragon.inspect