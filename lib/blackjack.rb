def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return Random.rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  deal_card
  deal_card
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit? (number)
  # code hit? here
  prompt_user
  get_user_input
  user_input = get_user_input
  if user_input == 's'
    !deal_card
  elsif user_input == 'h'
    deal_card
    number += deal_card
  else
    invalid_command
    prompt_user
  end
  return number
end

def invalid_command
  # code invalid_command here
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
