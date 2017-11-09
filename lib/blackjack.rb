require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(cardTotal)
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(finalCount)
  puts "Sorry, you hit #{finalCount}. Thanks for playing!"
end

def initial_round
  openingCards = 0
  2.times do
    openingCards += deal_card
  end
  display_card_total(openingCards)
  return openingCards
end

def hit?(currentTotal)
  prompt_user
  input = get_user_input
  if input == 'h'
    currentTotal += deal_card
  elsif input == 's'
    currentTotal
  else
    invalid_command
  end
  return currentTotal
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cardTotal = initial_round
  until cardTotal > 21
    cardTotal = hit?(cardTotal)
    display_card_total(cardTotal)
  end
  end_game(cardTotal)
end
