

def get_birth_path(birthdate)
    sum = 0
    sum += birthdate[1].to_i 
    sum += birthdate[2].to_i 
    sum += birthdate[3].to_i 
    sum += birthdate[4].to_i 
    sum += birthdate[5].to_i 
    sum += birthdate[6].to_i 
    sum += birthdate[7].to_i 
    sum += birthdate[8].to_i

    sum = sum.to_s
    sum = sum[1].to_i + sum[2].to_i 

    if (sum > 9)
        sum = sum.to_s
        sum = sum[1].to_i + sum[2].to_i 
    end

   return sum 
end 



def determine_birth_path(get_birth_path)

    case get_birth_path 
    when 1 
        message = "One is the leader. The number one indicates the ability to stand alone and is a strong vibration. Ruled by the Sun."
    when 2
        message = "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when 3
        message = "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
    when 4
        message = "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard=working, and helpful. Ruled by Uranus."
    when 5
        message = "This is the freedom lover. THe number five is an intellectual vibration. These are 'ideai' people with a love variety and the ability to adapt to most situations. Ruled by Mercury."
    when 6
        message = "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
    when 7
        message = "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
    when 8 
        message = "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
    when 9
        message = "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars"
    else
        message = "it works!"
    end
end


puts "Enter Birthday as MMDDYYYY"
birthdate = gets

birth_path = get_birth_path(birthdate)

message = determine_birth_path(birth_path)

puts message

