def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # This method generates and returns a random number between 1 and 11.
  rand(1..11)
end

def display_card_total(sum_of_cards)
  # accepts one argument, the sum, and prints the value to the screen w/o hard codnig
  puts "Your cards add up to #{sum_of_cards}"
end

def prompt_user
  # gives instructions for hitting or staying
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # returns the value of a `gets.chomp` method
  gets.chomp
end

def end_game(sum_of_cards)
  # prints apology, card total, and thank you message and takes in an argument sum_of_cards
  puts "Sorry, you hit #{sum_of_cards}. Thanks for playing!"
end

def initial_round
  sum_of_cards = deal_card + deal_card # call on deal_card twice and return the sum
  display_card_total(sum_of_cards) # calls on display_card_total to print the sum
  sum_of_cards # returns the sum
end

def hit?(sum_of_cards) # takes an arg of current card total
  prompt_user # call on prompt_user
  input = get_user_input # get and store the input

  if input == "s"
    return sum_of_cards
  elsif input == "h"
    return sum_of_cards + deal_card # deal a new card and add that # to the sum_of_cards
  else
    invalid_command # else, call invalid_command method
    prompt_user # remind user of valid command with the prompt
  end
  return sum_of_cards # returns an int, the sum of cards
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome   # welcome the user
  sum_of_cards = initial_round # set starting value of sum of cards which is initial round
  until sum_of_cards > 21 # until card sum is greater than 21
    sum_of_cards = hit?(sum_of_cards)  # assigning sum of a cards a new value after calling the hit method
    display_card_total(sum_of_cards)
  end
end_game(sum_of_cards) # then call end game
end
