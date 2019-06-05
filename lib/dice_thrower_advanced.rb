def throw_die
  rand(6)+1
end

def generate_set(number)
  Array.new(number) { throw_die }
end

def roll_prompt
  if rand(3, 100)
    puts "We're rolling a #{} sided die!"
  else
    puts 'Oops! This die does not exist. Please enter a number between 3 and 100'
  end
end
