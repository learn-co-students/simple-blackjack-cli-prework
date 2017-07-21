require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11)+1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user = gets.chomp()
  user
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  hand = deal_card() + deal_card()
  display_card_total(hand)
  hand
end

def hit?(total)
  prompt_user()
  user = get_user_input()
  if user == "h"
    total + deal_card()
  elsif user == "s"
    total
  else
    invalid_command()
    total
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user()
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  hand = initial_round()
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
