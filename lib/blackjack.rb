def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  input
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  current_cards = card1 + card2
  display_card_total(current_cards)
  current_cards
end

def hit?(card_points)
  prompt_user
  choice = get_user_input

  until choice == "s" || choice == "h"
    invalid_command
    prompt_user
    choice = get_user_input
  end

  if choice == "s"
    card_points
  elsif choice == "h"
    deal = deal_card
    card_points = card_points + deal
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
  points = initial_round
  until points > 21
    points = hit?(points)
  end
  display_card_total(points)
  end_game(points)
end
