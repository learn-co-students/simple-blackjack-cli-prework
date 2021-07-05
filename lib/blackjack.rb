def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == "h"
    new_total = number + deal_card
    
    return new_total
  elsif input == "s"
    return number
  else
    invalid_command
    return prompt_user
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
  total_cards = initial_round
    while total_cards < 21 do
    total_cards = hit?(total_cards)
    total_cards = display_card_total(total_cards)
    end
  end_game(total_cards)
end
    
