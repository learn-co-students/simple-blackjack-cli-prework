

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(2..11)
end

def display_card_total(cards_total)
  puts "Your cards add up to #{cards_total}"
  cards_total
end

def prompt_user
  puts "Type \'h\' to hit or \'s\' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(cards_total)
  puts "Sorry, you hit #{cards_total}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  cards_total = card_1 + card_2
  display_card_total(cards_total)
end

def hit?(cards_total)
  prompt_user
  input = get_user_input

  if input == "s"
    cards_total
  elsif input == "h"

    card_3 = deal_card
    cards_total + card_3
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total_cards = initial_round

  until total_cards > 21
    total_cards = hit?(total_cards)
    display_card_total(total_cards)

  end

  end_game(total_cards)
end
