def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(sum_of_cards)
  puts "Your cards add up to #{sum_of_cards}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(sum_of_cards)
  puts "Sorry, you hit #{sum_of_cards}. Thanks for playing!"
end

def initial_round
  sum_of_cards = deal_card + deal_card
  display_card_total(sum_of_cards)
  sum_of_cards
end

def hit?(sum_of_cards)
  prompt_user
  input = get_user_input
  if input == "h"
    sum_of_cards += deal_card
  end
  sum_of_cards
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  sum_of_cards
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum_of_cards = initial_round
  until sum_of_cards > 21 do
    sum_of_cards = hit?(sum_of_cards)
    display_card_total(sum_of_cards)
  end
  end_game(sum_of_cards)
end
