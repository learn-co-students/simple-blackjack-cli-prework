def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
  
end

def end_game(x)
 puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  x = deal_card
  y = deal_card
  
  sum = x + y
  puts "Your cards add up to #{sum}"
  sum
  
end

def invalid_command
puts "Please enter a valid command"
 prompt_user
invalid_command
end


def hit?(x)
  prompt_user
  input = get_user_input
  
if input == "h"
x+= deal_card
elsif input == "s"
x
else
  invalid_command
end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  newt = 0
  welcome
  newt += initial_round
  until newt > 21
  newt = hit?(newt)
  display_card_total(newt)
end
end_game(newt)
  
end
    
