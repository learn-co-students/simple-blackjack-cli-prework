def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
rand(1..11)
end

def display_card_total(total)
puts"Your cards add up to #{total}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(total)
puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
total=0;
total+=deal_card
total+=deal_card
display_card_total total
total
end

def hit? (total)
prompt_user
user_resp=get_user_input
 if user_resp=="h"
   total+=deal_card
   display_card_total total
   total
  elsif user_resp=="s"
  total
  else invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
total=initial_round
until total==21
  hit? (total)
  display_card_total (total)
end
end
    
