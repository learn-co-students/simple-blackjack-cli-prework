def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(deal_card)
  puts "Your cards add up to #{deal_card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(deal_card)
  puts "Sorry, you hit #{deal_card}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1+card2
  display_card_total(sum)
  sum
end

def hit?(sum)
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    sum
  elsif user_input == "h"
    sum += deal_card
  else
    invalid_command
    prompt_user
    get_user_input
  end
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
  until card_total > 21
  card_total = hit?(card_total)
  display_card_total(card_total)
  end
  end_game(card_total)
end
    
