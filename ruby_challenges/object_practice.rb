class Tired
    def set_name= (name)
        @name = name
    end
    def get_name
        return @name
    end
end

class Brain < Tired
    def coffee
        return "strong coffee"
    end
end

class Muscles < Tired
    def protein
        return "more protein"
    end
end

class Feet < Tired
    def massage
        return "foot massage please"
    end
end

my_brain = Brain.new
my_brain.set_name= "Brain"
brain_name = my_brain.get_name
puts "#{brain_name} says, so tired need #{my_brain.coffee}."

my_muscles = Muscles.new
my_muscles.set_name= "Muscles"
muscles_name = my_muscles.get_name
puts "#{muscles_name} say, so sore need #{my_muscles.protein}."

my_feet = Feet.new
my_feet.set_name= "Feets"
feet_name = my_feet.get_name
puts "#{feet_name} say, so tired need #{my_feet.massage}."

puts my_brain.inspect
puts my_muscles.inspect 
puts my_feet.inspect
