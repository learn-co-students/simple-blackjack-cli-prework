def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
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

def end_game(end_game)
  puts "Sorry, you hit #{end_game}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(arg)
  prompt_user
  input = get_user_input
  if input == "h"
    arg = arg + deal_card
  elsif input == "s"
    return arg
  else
    invalid_command
  end
  return arg
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
  if total > 21
    end_game(total)
  end
end
    
