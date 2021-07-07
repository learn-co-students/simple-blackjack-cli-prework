# this entire game can be done within a class, which would also eliminate global values in addition to making the code much cleaner

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  until ["h","s","exit"].include?(input)
    invalid_command
    input = gets.chomp
  end
  input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  $card_total = deal_card + deal_card
  display_card_total($card_total)
  $card_total
end

def hit?(n)
  prompt_user
  n += deal_card if get_user_input == "h"
  $card_total = n
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  until $card_total >= 21
    hit?($card_total)
    display_card_total($card_total)
  end
  end_game($card_total)
end
