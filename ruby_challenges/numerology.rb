def get_birth_path_number(user_birthdate)
# add all birthdate numbers, while converting to integers, and assign to new variable
number = user_birthdate[0].to_i + user_birthdate[1].to_i + user_birthdate[2].to_i + user_birthdate[3].to_i + user_birthdate[4].to_i + user_birthdate[5].to_i + user_birthdate[6].to_i + user_birthdate[7].to_i

# convert number back to a string then add the remaining two numbers together
number = number.to_s
number = number[0].to_i + number[1].to_i

# determine whether number is greater than 9, if greater reduce again
if number > 9
    number = number.to_s
    number = number[0].to_i + number[1].to_i
end 

return number
end

# when final number is determined state what number means
def get_message(birth_path_number)

case birth_path_number
    when 1 
        message = "Your birth path is of a #{birth_path_number}.\nOne's are leaders. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the sun."
    when 2
        message =  "Your birth path is of a #{birth_path_number}. \nTwo's are the mediators and peace-lovers. The number two indicates the diesre for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when 3 
        message = "Your birth path is of a #{birth_path_number}. \nThree's are sociable, friendly, and outgoing vibration. Kind, positive, and optimistic. Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
    when 4 
        message = "Your birth path is of a #{birth_path_number}. \nFour's are the workers. Practical, with a love of deatail. Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
    when 5
        message = "Your birth path is of a #{birth_path_number}. \nFive's are freedom lovers. The number 5 is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury"
    when 6
        message = "Your birth path is of a #{birth_path_number}. \nSix's are the peace lovers. The number 6 is a loving, stable, and harmonious vibration. Ruled by Venus."
    when 7
        message = "Your birth path is of a #{birth_path_number}. \nSeven's are deep thinkers. The number 7 is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune." 
    when 8
        message = "Your birth path is of a #{birth_path_number}. \nEight's are managers. Number eight is a strong, successful, and material vibration. Ruled by Saturn."
    when 9 
        message =  "Your birth path is of a #{birth_path_number}. \nNine's are teachers. The number nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    else
        message = "Your birth path number didn't land on a number between 1-9!"
    end

end    

puts "What is your birthdate in MMDDYYYY format: "
user_birthdate = gets

birth_path_number = get_birth_path_number(user_birthdate)

message = get_message(birth_path_number)

puts message