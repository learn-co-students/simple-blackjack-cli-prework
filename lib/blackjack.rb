require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_input = (gets.chomp).to_s
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0
  2.times do
    sum += deal_card
  end
  display_card_total(sum)
  return sum
end

def hit?(total)
  # code hit? here
  prompt_user
  if get_user_input == "h"
    total += deal_card
  end
  return total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

  welcome
  sum = initial_round
  while sum < 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  if sum > 21
    end_game(sum)
  end
end
