def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1 + rand(11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
   puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  initial_cards = deal_card + deal_card
  display_card_total(initial_cards)
  return initial_cards

end

def hit?(card_total)
  # code hit? here
  prompt_user
  answer = get_user_input
if answer == ""
    invalid_command
  elsif answer == "h"
    card_total += deal_card
  elsif answer == "s"
     card_total
   end
end

def invalid_command
  # code invalid_command here
  "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_count = initial_round
while initial_count < 21
  initial_count = hit?(initial_count)
  display_card_total(initial_count)
end
  end_game(initial_count)
end
