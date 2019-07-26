def welcome(phrase = "Welcome to the Blackjack Table")
  puts phrase
end

def deal_card
  rand(1..11)
end

def display_card_total(cardtotal)
  puts "Your cards add up to #{cardtotal}"
end

def prompt_user(string="Type 'h' to hit or 's' to stay")
  puts string
end

def get_user_input
  gets.chomp
end

def end_game(cardtotal)
  puts "Sorry, you hit #{cardtotal}. Thanks for playing!"
end

def initial_round
   card_one = deal_card
   card_two = deal_card
   cardtotal = card_one + card_two
   display_card_total(cardtotal)
   card_one + card_two
  
end

def hit?(current_card_value)
   prompt_user
   user_input = get_user_input
   while user_input != "h" || user_input !="s"
 end
 if user_input = "h"
current_card_value += deal_card
 elsif user_input = "s"
current_card_value
 else invalid_command
   
 end
 return current_card_value
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  initial_round
  prompt_user
  hit?
  until current_card_value > 21
  card_total = hit?(current_card_value)
  display_card_total(cardtotal)
end
end_game(cardtotal)

end
    
