def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 h_or_s = gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  hand = deal_card + deal_card
  display_card_total(hand)
  hand
end

def hit?(hand)
 prompt_user
  h_or_s = get_user_input
  if h_or_s == "s"
    hand
    elsif h_or_s == "h"
    hand += deal_card
  else
    invalid_command
    prompt_user
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
  hand = initial_round
  until hand > 21
  hand = hit?(hand)
  display_card_total(hand)
end
  end_game(hand)
  end
    
