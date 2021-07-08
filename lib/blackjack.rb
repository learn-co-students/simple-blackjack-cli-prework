require 'pry'
card_total=0

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
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
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  #binding.pry
  card_total = card_total.to_i + card1 + card2
  #binding.pry
  display_card_total(card_total)
  card_total
  #binding.pry
end
#initial_round
#binding.pry



#binding.pry
def hit?(card_total)
  # code hit? here
prompt_user
#binding.pry
response = get_user_input
#binding.pry
if response == "s"
  return card_total
elsif response == "h"
  new_card = deal_card
  card_total = card_total.to_i + new_card
return card_total
else
  invalid_command
end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end



#counter = card_total
#card_total = 12
#binding.pry
def runner
  # code runner here
  welcome
  card_total = initial_round
  #binding.pry
  card_total = hit?(card_total)
  #binding.pry
  until card_total > 21
    hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
puts "Your cards add up to #{card_total}"
end
