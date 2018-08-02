
current_card_total = 0

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1 + rand(11)
end

def display_card_total(n)
  # code #display_card_total here
  puts "Your cards add up to #{n}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(current_card_total)
  # code #end_game here
  puts "Sorry, you hit #{current_card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  current_card_total = deal_card + deal_card
  display_card_total(current_card_total)
  current_card_total
end

def hit?(current_card_total)
  # code hit? here
  prompt_user
  response = get_user_input
  if response == "s"
    current_card_total
  elsif response == "h"
    current_card_total += deal_card
  else
    until response == "h" || "s"
      invalid_command
      prompt_user
    end
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  until current_card_total > 21
     hit?(current_card_total)
     display_card_total(current_card_total)
  end
  end_game(current_card_total)
end
