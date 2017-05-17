def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  cards = [1,2,3,4,5,6,7,8,9,10,11]
  cards.sample
end

def display_card_total (total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game (total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  deal_card
  deal_card
  display_card_total = deal_card + deal_card
  puts "Your cards add up to #{display_card_total}"
  return deal_card + deal_card
  # code #initial_round here
end

def hit? (current_card_total)
  prompt_user
  user_input = get_user_input
  while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input=get_user_input
  end
  if user_input == "h"
    current_card_total += deal_card
  end
  return current_card_total

  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  number = initial_round()
   until number > 21
   
   number = hit?(number)
   display_card_total(number)
   end
   end_game(number)
 end
  # code runner here
