def throw_die
  rand(6)+1
end

def generate_set(number)
  Array.new(number) { throw_die }
end
