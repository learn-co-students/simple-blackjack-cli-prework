def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total (sum)
  return sum
end

def hit? (card_total)
  prompt_user
  userInput = get_user_input
  
  if userInput == "h"
    card_total += deal_card
  elsif userInput == "s"
    card_total
  else
    prompt_user
    invalid_command
  end
  
  return card_total
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
  welcome
  running_total = initial_round
  
  until running_total > 21
      
      running_total = hit?(running_total)
      display_card_total(running_total)
  end    
  
end_game(running_total)
  
  
  
end
    
