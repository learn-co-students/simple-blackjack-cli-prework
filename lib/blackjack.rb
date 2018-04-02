def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  (rand*11).ceil.to_i
  # code #deal_card here
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(number)
  # code hit? here
    prompt_user
    decision = get_user_input
    if decision == "s"
      number
    elsif decision == "h"
      number += deal_card
    else
      invalid_command
    end
  number
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
  sum = 0
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
runner
