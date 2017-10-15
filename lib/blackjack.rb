def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(x)
  # code #display_card_total here
  puts "Your cards add up to #{x}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(x)
  # code #end_game here
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  deal_total = deal_card + deal_card
  return deal_total
  # code #initial_round here
end


def hit?(x)
  prompt_user
  get_user_input
  return x
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  def get_user_input
    "h"
  end
  # code runner here
end
