def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 1 + rand(11)
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def get_user_input
 gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(total)
 prompt_user
  input = get_user_input
  if input == "h"
    new = deal_card
    return total + new
  elsif input == "s"
  return total
else
 invalid_command
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
  initial_round
  total = deal_card + deal_card
  until total > 21 do
  display_card_total(total)
  hit?(total)
end
  if total > 21
  end_game
end
end
