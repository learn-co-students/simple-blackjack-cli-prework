def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  card_total = num
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets
end

def end_game
  # code #end_game here
  card_total = display_card_total()
  if num === card_total
   puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  deal_card
  display_card_total
  deal_card
  sum = display_card_total
  
end

def hit?
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input === "h"
    deal_card
  else if user_input !== "h" || user_input !== "s"
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
   puts "Please enter a valid command"
   prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
