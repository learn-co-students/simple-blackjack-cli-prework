def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

# my solution which passed the tests but not so efficient in terms of running the program
# def hit?(current_card_total)
#   # code hit? here
#   prompt_user
#   user_input = get_user_input
#   if user_input == "s"
#     current_card_total
#   elsif user_input == "h"
#     current_card_total += deal_card
#   else
#     invalid_command
#   end
# end

# Learn.co solution for #hit? great use of the until loop in case of invalid_command
def hit?(card_total)
  prompt_user
  input = get_user_input
  until input == 'h' || input == 's'
    invalid_command
    prompt_user
    input = get_user_input
  end
  if input == 'h'
    card_total += deal_card
  elsif input == 's'
    card_total
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
  cards = initial_round
  until cards > 21
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end

    
