def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
   puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input =="h"
    card_total += deal_card
  elsif user_input =="s"
    card_total
  else
    invalid_command
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_total = initial_round
  until current_total > 21
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
end_game(current_total)
end
