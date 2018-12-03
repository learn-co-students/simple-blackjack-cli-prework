require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(sum)
  # code #display_card_total here
  puts "Your cards add up to #{sum}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(current_card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 's'
    return current_card_total
  elsif input == 'h'
    current_card_total += deal_card
  elsif input != 'h' || 's'
    invalid_command
    #prompt_user
  end
  return current_card_total
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
  welcome
  x = initial_round
  until x > 21
    y = hit?(x)
    #binding.pry
    display_card_total(y)
    x = y
  end
  end_game(x)
end
