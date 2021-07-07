def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card() + deal_card()
  display_card_total(card_total)
end

def hit?(number)
  prompt_user()
  input = get_user_input()
  total = number
  if input == "h"
    total = deal_card() + number
 elsif input != "s"
    invalid_command()
    prompt_user()
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  count = initial_round()
  until count > 21
    count = hit?(count)
    display_card_total(count)
  end
end_game(count)
end
