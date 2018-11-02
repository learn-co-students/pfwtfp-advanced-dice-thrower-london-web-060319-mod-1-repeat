# Advanced Dice Thrower

## Learning Goals

- Generate variable die throws
- Generate a `Hash` of die throws
- Retrieve conditional results

## Introduction

Games are often more fun when they have more depth and flexibility. Similarly,
apps are often more useful and usable for the same reasons. So it's a good idea
for all of us programmers to practice how to code for various levels of
complexity.

In the previous dice thrower lab, we created methods to throw a single die and
to generate a set of results of thrown dice, simulating the ability to roll as
many dice as we'd like. Most dice games involve more than one die, rolled
repeatedly through the game. It seems like we could extend this to program more
complicated games, right?

For example, say we wanted to start building a CLI version of the game of
[Settlers of Catan]. In the game, each player takes turns rolling two six-sided
dice. Each roll can be thought of as a set, so, over the course of a game, rolls
look something like this:

```ruby
Turn One: [4,4]
Turn Two: [2,5]
Turn Three: [5,6]
Turn Four: [3,3]
Turn Five: [4,3]
...
```

Some rolls in Settlers of Catan are special. If the two rolled dice add up to
_7_, the player gets to take special action—in this case, steal resources from
another player).

In this lab, we will be writing methods to simulate this behavior. We will not
be building an entire version of Settlers of Catan, but we will expand on what
we've already written to set up a foundation we can use for _any_ sort of dice-
based game.

## Generate a Hash of Die Throws

If you take a look in `lib/dice_thrower_advanced.rb`, `throw_die` and
`generate_set` are already provided (although they may differ from your
previous solution). This is a lot like joining an engineering team: the methods
you use might be written in a way that's new to you. It's a great opportunity
to learn new ways of working. Additionally, when you extend code you shouldn't
go in and change the code that you inherited. Leave the implementation of those
methods alone.

Our first addition is that we want to simulate and keep track of the 'turns' of
a dice game. A turn might involve rolling multiple dice. We've already got the
ability to create `Array`s of dice rolls, so each set we create can work as a
single turn. But how can we track these sets over many turns?

Let's write a method called `generate_hash_set` that uses `generate_set` to
return a `Hash` of multiple dice throws. The results of each turn can be stored
in the `Hash` using the current 'turn' as the key and the `Array` of die throws
as the value. For example, if we roll two, six-sided die five times, it might
look like the following:

```ruby
{
    1 => [5,3]
    2 => [2,1]
    3 => [2,6]
    4 => [6,3]
    5 => [4,4]
}
```

With this set up, the entire `Hash` can be thought of as a record of the game,
and could even be used to track whose turn it is.

## Retrieve Conditional Results

Next, we will write a method called `lucky_number_seven`.  We will be given a
history of dice rolls (something that `generate_hash_set` might have returned)
as the argument to this method.

**NOTE:** Use `print` instead of `puts` to print output to the terminal. Tests
**will not work** otherwise!

We will iterate through the history and if we see any roll where the `Array` of
results adds up to 7, we'll print: "You're pretty lucky!"

If "7" is rolled 2 or more times _in a row_, print "Wow, you're on a roll!".

If there are no values of "7" in your hash, it will print "No such luck this
time!".

## Generate Variable Die Throws

So far, we've got a good foundation for all sorts of dice games. We could now
create CLI versions of all sorts of board games. But what about our Dungeons and
Dragons friends? They've got all kinds of dice with a variable number of sides.

Let's create two new methods for our Orc-battling friends: `roll_prompt` and
`throw_variable_die`.

### `roll_prompt`

The `roll_prompt` method will accept an integer representing the maximum pips.
"Pips" are the name for the dots on traditional die. The maximum pip count is
the maximum value a die can give.  The maximum must be between 3 to 100.

* When a valid number is passed in, print a message that says "We're rolling a
  `[number_of_sides]`sided die!". And then use that number as an argument to
  the `throw_variable_die` function described below. Return the return value from
  `throw_variable_die`.
* If a number less than 3 or greater than 100 is passed in, it should **print
  and return** `Oops! This die does not exist.  Please enter a number between 3
  and 100.`

### `throw_variable_die`

Similar to `throw_die`, the `throw_variable_die` method will roll the die, but
instead of using a fixed number of 6, it will accept an integer to define the
die's maximum pip count

**HINT:** Randomly generated integers start at 0. Make sure that you
accommodates for this so that 0 is not a possible number that can be rolled.

## Conclusion

Congratulations! You were able to utilize and potentially refactor existing code
to add more complex, game-like methods to your Ruby program. Are there ways
that the methods can be split up even further for simplicity? Keep this in mind
as your programs become more complex.

## Resources

- [Settlers of Catan]

[Settlers of Catan]: https://www.catan.com/
