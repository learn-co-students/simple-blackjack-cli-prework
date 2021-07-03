def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(10) + 1
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
  curr_total = deal_card + deal_card
  display_card_total(curr_total)
  return curr_total
end

def hit?(current_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    current_total
    elsif user_input == "h"
      deal_card + current_total
    else
      invalid_command
      hit?(current_total)
    end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a vaid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  # code runner here
  welcome
  current_total=initial_round
  until current_total>21
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
    end_game(current_total)
end
    
