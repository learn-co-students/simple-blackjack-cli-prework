def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_value)
  puts "Your cards add up to #{card_value}"
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
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    return card_total
  elsif user_input == "h"
    card_total += deal_card
  else
    invalid_command
    prompt_user
    get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command."
  
end


def runner
  welcome
  hand = initial_round
  until hand > 21
    prompt_user
    user_input = get_user_input
    if user_input == "s"
      prompt_user
      get_user_input
    elsif user_input == "h"
      hand += deal_card
    else
      puts invalid_command
      prompt_user
    end
    display_card_total(hand)
  end
    end_game(hand)
end
    