def throw_die
  rand(6)+1
end

def generate_set(number)
  set = Array.new(number)
  set.map do
    throw_die
  end
end
