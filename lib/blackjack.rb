def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1+rand(11)
  card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
round = deal_card + deal_card
display_card_total(round)
round
end

def hit?(card_total)
prompt_user
local_user_input=get_user_input
while local_user_input != "h" && local_user_input != "s"
  invalid_command
  prompt_user
  user_input
  if local_user_input == "s" || local_user_input == "h"
    break
  end
end
if local_user_input == "h"
  card_total += deal_card
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
card_total = initial_round
while card_total < 21
card_total=hit?(card_total)
display_card_total(card_total)
end
end_game(card_total)
end
