card_total = 0

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
   1 + rand(11)
end

def display_card_total(card_total)

  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    new_card = deal_card
    card_total += new_card
    return card_total
  elsif input == "s"
    return card_total
  else
    invalid_command
  end
end

def invalid_command
 puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round

  until total > 21
  total = hit?(total)
  display_card_total(total)
end
end_game(total)
end
