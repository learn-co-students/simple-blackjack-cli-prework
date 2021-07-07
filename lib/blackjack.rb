def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total (x)
  puts "Your cards add up to #{x}"
  return x
end

def prompt_user
   puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game(card_total)
  if card_total > 21
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end
end

def initial_round
  sum = deal_card + deal_card
  display_card_total (sum)
  return sum
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == "h"
    number = deal_card + number
  end
  return number
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card = initial_round
  until card > 21 do
  card = hit? (card)
  display_card_total (card)
  end
  end_game(card)
end
