def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(tot)
  puts "Your cards add up to #{tot}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(tot)
    puts "Sorry, you hit #{tot}. Thanks for playing!"
end

def initial_round
  tot = deal_card + deal_card 
  display_card_total(tot)
  return tot
end

def hit?(tot)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    tot += deal_card
  elsif user_input == "s"
    tot
  else invalid_command
  end 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  tot = initial_round
  while tot < 21 
    tot = hit?(tot)
    display_card_total(tot)
  end
end_game(tot)
end
    
