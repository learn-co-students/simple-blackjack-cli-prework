def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  start_hand = 0
  start_hand += deal_card
  start_hand += deal_card
  display_card_total(start_hand)
  return start_hand
end

def hit?(number)
  prompt_user
  player_input = get_user_input
  if player_input == "s"
    return number
  elsif player_input == "h"
    number += deal_card
    return number
  else
    invalid_command
    hit?(number)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
  end
  end_game(total)
end
