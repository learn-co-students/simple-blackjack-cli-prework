require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..6)
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

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  card_total = card_1 + card_2

  display_card_total(card_total)

  return card_total
end

def hit?(card_total)
  prompt_user
  hit_or_stay = get_user_input

  if hit_or_stay  == 'h'
    new_card = deal_card
    new_card_total = card_total + new_card
    return new_card_total

  elsif hit_or_stay  == 's'
    return card_total

  else
    invalid_command
    return card_total
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
  card_total = initial_round
  
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end

  end_game(card_total)
end




