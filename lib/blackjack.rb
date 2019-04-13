def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
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

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total =  deal_card + deal_card
  display_card_total(card_total)
  card_total
  
end

def hit?(initial_round)
  initial_round
  prompt_user
  input = get_user_input
  if input == "s"
    "s"
  elsif input == "h"
   initial_round += deal_card
  else
    invalid_command
  end
    
  initial_round
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  first_round = initial_round
  until first_round > 21 
    first_round = hit?(first_round)
    display_card_total(first_round)
    
  end
    end_game(first_round)
end
    
