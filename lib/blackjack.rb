def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  return rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  sum = card_one + card_two
  display_card_total(sum)
  return sum
end

def hit?(number)
  prompt_user
  response = get_user_input
  if response == "h"
    new_card = deal_card
    new_total = new_card + number
    return new_total
  elsif response == "s"
    return number
  else
    invalid_command
    return number
  end
end

def invalid_command
  puts "Please enter a valid command"
    # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number = initial_round
  until number>21
    number = hit?(number)
    display_card_total(number)
  end
end_game(number)
end
