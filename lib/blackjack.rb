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
  first_round = deal_card + deal_card
  display_card_total(first_round)

  first_round
end

def hit?(total)
  prompt_user
  response = get_user_input

  if response == "h"
    total += deal_card
  elsif response == "s"
    total
  else
    invalid_command
  end
end

def invalid_command
  "Sorry you didn't input one of the two avialiable options, try again!"
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
