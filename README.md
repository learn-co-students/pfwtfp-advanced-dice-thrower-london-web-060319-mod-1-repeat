# Dice Thrower

## Learning Goals

- Generate variable die throws
- Generate a hash of die throws
- Retrieve conditional results 

## Introduction

In this lab, we're going to continue building a procedural dice game.

- Reiterate the purpose: practicing our skills in enumerables and arrays

## Generate Variable Die Throws

Similarly to the first `throw_dice` method, let's create a `throw_variable_dice`
method that will accept any number of sides from 3 to 100. When a number is passed,
print a message that says "We're rolling a `[number_of_sides] `sided die!". If a
number less than 3 or greater than 100 is passed in, it should return "Oops! This
die does not exist. Please enter a number between 3 and 100".

**Note:** Randomly generated integers start at 0. Make sure that your accommodates
for this so that 0 is not a possible number that can be rolled.

## Generate a Hash of Die Throws

Next, let's write a method called `generate_hash_set` that returns a set of dice
throws. Each time the dice is thrown, it will store the result to hash. Store the
current roll as the key, and the result as the value. For example, if we roll a 6
sided die 5 times, it might look like the following:

```ruby
dice_roll = {
    1: 5
    2: 2
    3: 2
    4: 6
    5: 4
}
```

## Retrieve Conditional Results

Lastly, we'll build a method called `lucky_number_seven`. If a number greater
than 6 is passed in and rolled multiple times, it's possible that we could roll
a "lucky number 7"! If a "7" is rolled, print "You're pretty lucky!". If "7" is
rolled more 2 or more times in a row, create a condition that prints "You're on
a roll!"

## Conclusion

Congratulations! You were able to utilize and potentially refactor existing code
and create more complex, game-like methods to your Ruby program. Are there ways
that the methods can be split up even further for simplicity? Keep this in mind
as your programs become more complex.
