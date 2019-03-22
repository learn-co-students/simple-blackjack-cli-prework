def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(cards_total)
  # code #display_card_total here
  puts "Your cards add up to #{cards_total}"
  cards_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(cards_total)
  # code #end_game here
  puts "Sorry, you hit #{cards_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here

  cards_total = deal_card + deal_card
  display_card_total(cards_total)
  cards_total
end

def hit?(cards_total)
  # code hit? here

  prompt_user
  game_state = get_user_input

  if game_state == "s"
    cards_total
  elsif game_state == "h"

    cards_total + deal_card

  end

end

def invalid_command
  # code invalid_command here
  puts "Error"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cards = initial_round
  while cards < 21
    cards = hit? cards
    cards = display_card_total(cards)
  end
  end_game(cards)
end
