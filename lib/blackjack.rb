def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total (card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets
end

def end_game (card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit? (card_total)
  # code hit? here
  prompt_user
  response = get_user_input
  if response == "h"
    second_card = deal_card
    new_card_total = card_total + second_card
  elsif response == "s"
    new_card_total = card_total
  else
    invalid_command
    prompt_user
  end
  new_card_total
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
  total = 0
  until total > 21
    first_round_of_cards = initial_round
    second_round_of_cards = hit?(first_round_of_cards)
    display_card_total(second_round_of_cards)
    total += second_round_of_cards
  end
  end_game (total)
end
