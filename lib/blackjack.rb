def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  value = deal_card + deal_card
  display_card_total(value)
  value
end

def hit?(total)
  prompt_user
  result = get_user_input
  if result == "h"
    deal_card + total
  elsif result == "s"
    result
    total
  else
    invalid_command
    get_user_input
  end
end

def invalid_command
  puts "invalid_command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
