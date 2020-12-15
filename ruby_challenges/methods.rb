def my_first_method
    puts "Hello, World"
end

my_first_method

def my_second_method (num1, num2)
    number = num1 + num2
    puts number
end

my_second_method(2, 2)
my_second_method(5, 3)
my_second_method(107, 258)

def personal_greeting
    puts "What is your name?"
    name = gets.to_s

end

def determine_current_hour
    current_time = Time.new
    current_time.hour
  end
   
  def greeting

    name = personal_greeting

    current_hour = determine_current_hour
    if current_hour >= 3 && current_hour < 12
      time = "morning"
    elsif current_hour >= 12 && current_hour < 18
      time = "afternoon"
    elsif current_hour >= 18 || current_hour <= 2
      time = "evening"
    end
   
    puts "Good #{time}, #{name.capitalize}!"
  end
   
  greeting