def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end


def deal_card
  a = rand(1..11)
  return a
  # code #deal_card here
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  choice = gets.chomp
  return choice
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  puts "Your cards add up to #{total}"
  return total
end


def invalid_command
  puts  "Please enter a valid command"
  prompt_user
  # code invalid_command here
end


def hit?(n)
  prompt_user
  choice = get_user_input
  if choice == "s"
    return n
  elsif choice == "h"
    new_amount = n + deal_card
    return new_amount
  else
    invalid_command
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total_of_cards = initial_round
  until total_of_cards > 21
    total_of_cards = hit?(total_of_cards)
    display_card_total(total_of_cards)
  end
  end_game(total_of_cards)
end
