def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  num1 = deal_card
  num2 = deal_card
  total = num1 + num2
  display_card_total(total)
  return total
end

def hit?(current_total)
  prompt_user
  letter = get_user_input
  if letter == "s"
   return current_total
  elsif letter == "h"
    current_total += deal_card
    return current_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card = initial_round
  total = 0
  while card < 21
    card += hit?(total)
    display_card_total(card)
  end
  end_game(card)
end
    
