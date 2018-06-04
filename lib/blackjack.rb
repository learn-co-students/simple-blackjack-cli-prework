def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1...11)
  return card
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
  input = gets.chomp
  return input
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

def hit?(current_card_number)
  # code hit? here
  prompt_user
  input = get_user_input
  while input != "s" && input != "h"
    invalid_command
    prompt_user
    input = get_user_input
  end
  if input == "h"
    current_card_number += deal_card
  end
  return current_card_number
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
    welcome
    current_card_number = initial_round
  until current_card_number >= 21
    current_card_number = hit?(current_card_number)
    display_card_total(current_card_number)
    end
    end_game(current_card_number)
end
