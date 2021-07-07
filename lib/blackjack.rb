def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(sum)
  # code #display_card_total here
  puts "Your cards add up to #{sum}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(arg)
  # code #end_game here
  puts "Sorry, you hit #{arg}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card
  card_two = deal_card
  first_hand = card_one + card_two
  display_card_total(first_hand)
  first_hand
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  if input == "s"
    current_total
  elsif input == "h"
    current_total += deal_card
  else
    invalid_command
  end
end


def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  until hand > 21 do
    draw = hit?(hand)
    hand += (draw - hand)
    display_card_total(hand)
  end
  end_game(hand)
end
