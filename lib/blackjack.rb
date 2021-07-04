def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts  "Type 'h' to hit or 's' to stay"
  
end

def get_user_input
  # code #get_user_input here
  gets.chomp
  
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0
  sum += deal_card
  sum += deal_card
  display_card_total(sum)
  return sum
end

def hit?(sum = initial_round)
  # code hit? here
  prompt_user
  user_input = get_user_input
    if user_input == "s"
      return sum
    elsif user_input == "h"
       return sum += deal_card
     else 
        invalid_command
    end
  return sum
  
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
  sum = initial_round
    until sum > 21
     sum = hit?(sum)
     display_card_total(sum)
    end
  end_game(sum)
end


    
