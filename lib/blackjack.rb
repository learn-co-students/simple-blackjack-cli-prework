def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(input)
  # code #display_card_total here
  # puts "**************************#{input}"
  puts "Your cards add up to #{input}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(input)
  # code #end_game here
  #  puts "******************#{input}"
  puts "Sorry, you hit #{input}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card
  sum = sum + deal_card
  puts "Your cards add up to #{sum}"
  sum
end

def hit?(sum)
  # code hit? here
  prompt_user
  user_input = get_user_input
  sum += deal_card if user_input == "h"
  sum
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum=initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
    
  end
  end_game(sum)
end
