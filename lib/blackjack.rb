def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card
  card_total += deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    # return the value unchanged.
    card_total
  elsif user_input == "h"
    card_total += deal_card
  else
    invalid_command
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome

  # initial_round returns its value, which can be assigned to a new variable
  hand = initial_round

  # continually test hand until it's over 21
  while hand < 21
    # can't just call #hit? by itself - you have to reassign 'hand' (being tracked by loop) using the method call
    hand = hit?(hand)
    display_card_total(hand)
  end
  # program will terminate automatically after running last possible line of code
  end_game(hand)
end
