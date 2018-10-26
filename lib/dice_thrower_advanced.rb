def roll_prompt(number_of_sides)
  if number_of_sides.between?(3, 100)
    print "We're rolling a #{number_of_sides} sided die!"
    throw_variable_die(number_of_sides)
  else
    return "Oops! This die does not exist. Please enter a number between 3 and 100"
  end
end

def throw_variable_die(number_of_sides)
  rand(number_of_sides) + 1
end

def generate_hash_set(number_of_throws, number_of_sides)
  hash = Hash.new
  number_of_throws.times do |roll|
    hash[roll + 1] = throw_variable_die(number_of_sides)
  end
  lucky_number_seven(hash)
end

def lucky_number_seven(hash)
  value_array = hash.values
  if value_array.include?(7)
    print "You're pretty lucky!"
    value_array.each_with_index do |value, i|
      if value == 7 && value_array[i+1] == 7
        print "Wow, you're on a roll!"
      end
    end
    hash
  else
    print "No such luck this time!"
    hash
  end
end