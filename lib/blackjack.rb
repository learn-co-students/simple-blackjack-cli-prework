def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  move = gets.chomp
  
  move
end

def end_game(arg)
  puts "Sorry, you hit #{arg}. Thanks for playing!"
end

def initial_round
  starting_hand = deal_card + deal_card
  display_card_total(starting_hand)
  starting_hand
end

def hit?(arg)
  prompt_user
  arg += deal_card if get_user_input == "h"
  arg
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  hand = hit?(hand)
  display_card_total(hand)
  end_game(hand)
end
    
