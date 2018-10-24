require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  (1..11).to_a.sample
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

def end_game(hand)
  puts "Sorry, you hit #{hand}. Thanks for playing!"
end

def initial_round
  hand = deal_card + deal_card
  display_card_total(hand)
  hand
end

def hit?(hand_total)
  prompt_user
  input = get_user_input
  case input
  when "h"
    hand_total + deal_card
  when "s"
    hand_total
  else
    invalid_command
  end
end

def invalid_command(input)
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  welcome
  hand = initial_round
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
    #its a bit confusing that the game is not ment to be functionable
    #write code to pass the specs, not to make the game functionable
  end
  end_game(hand)
end
