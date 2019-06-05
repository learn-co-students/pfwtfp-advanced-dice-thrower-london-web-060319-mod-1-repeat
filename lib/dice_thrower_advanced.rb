def throw_die
  rand(6)+1
end

def generate_set(number)
  Array.new(number) { throw_die }
end

def roll_prompt(num_sides)
  if num_sides.between?(3, 100)
    print "We're rolling a #{num_sides} sided die!"
    throw_variable_die(num_sides)
  else
    "Oops! This die does not exist. Please enter a number between 3 and 100"
  end
end

def throw_variable_die(num_sides)
  rand(num_sides)+1
end

def generate_hash_set(num)
  hash = Hash.new
  num.times {|roll| hash[roll+1] = generate_set(2)}
  lucky_number_seven(hash)
  hash
end

def lucky_number_seven(src)
  totals = src.reduce({}) do |k, v|
    k[v[0]] = v[1].reduce(&:+)
    k
  end
  if !totals.values.include?(7)
    print  "No such luck this time!"
  else
    if totals.values.join('').match(/77/)
      print "Wow, you're on a roll!"
    else
      print "You're pretty lucky!"
    end
  end
  return src
end
