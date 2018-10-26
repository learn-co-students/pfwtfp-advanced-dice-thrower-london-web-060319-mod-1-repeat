def throw_die
  rand(6)+1
end

def generate_set(number)
  Array.new(number) { throw_die }
end

def generate_hash_set(number)
  hash = Hash.new
  number.times do |roll|
    hash[roll + 1] = generate_set(2)
  end
  lucky_number_seven(hash)
  hash
end

def lucky_number_seven(hash)
  value_array = hash.values
  if value_array.reduce(:+) == 7
    print "You're pretty lucky!"
    hash
  elsif value_array.include?(7)
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
