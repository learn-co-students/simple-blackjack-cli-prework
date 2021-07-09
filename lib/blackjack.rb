def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game (card_total)
  if card_total > 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  initial_hand = deal_card + deal_card
  display_card_total(initial_hand)
  return initial_hand
end

def hit?(initial_hand)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    initial_hand += deal_card
  elsif user_input == "s"
    initial_hand
  else
    invalid_command
  end
end

def invalid_command
  puts "That's an invalid command!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_hand=initial_round
  until initial_hand>21 do
    initial_hand=hit?(initial_hand)
    display_card_total(initial_hand)
  end
  end_game(initial_hand)
end
