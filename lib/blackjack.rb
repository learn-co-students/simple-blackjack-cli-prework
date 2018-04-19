def welcome
  # code #welcome here
  puts  "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return  rand(1..11)
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
  user_input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  cards_sum = deal_card + deal_card
  display_card_total(cards_sum)
  cards_sum
end

def hit?(num)
  # code hit? here
  prompt_user
  user_input = get_user_input
  
    if user_input == "h"
      num += deal_card
    elsif user_input == "s"
    num
  else 
    invalid_command
  end
  num
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
  welcome
  new_total = initial_round
  until new_total > 21
  new_total = hit?(new_total)
  display_card_total(new_total)
end
end_game(new_total)
end
    
