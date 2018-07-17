# Get My Number Game!
# Written by: John Schaub
puts "Welcome to ' Get My Number!'"

puts "What's your name?"
input = gets
name =input.chomp
puts "Welcome, #{name}!"

#Store a random numver for the player to guess.
puts "I've got a random number for you, the player to guess, between 1 and 100!"
puts "Can you guess it?"
target = rand(100) + 1

#Track  how many guesses the player has made.
num_guesses  = 0

#Track whether the player has guessed correctly.
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You've got #{ 10 - num_guesses} guesses left."
# Prompt the player to make a guess as to what the target number is.
print "make a guess: "
guess = gets.to_i #<--this code will call to_i on the string returned from gets.

num_guesses += 1

# Compare  the guess to the target.
# Print the appropriate message.
if guess < target
  puts "Oops. You're guess was LOW."
elsif guess  > target
  puts "Oops. You're guess was HIGH."
elsif guess == target
  puts "Good Job, #{name}, You are a Unicorn!"
  puts "You guessed the number in #{num_guesses} guesses!"
  guessed_it = true
end

end
# If player ran out of turns, tell them what the number was.
unless guessed_it
  puts "Sorry!  (It was #{target}!  You Bum!) "
end
