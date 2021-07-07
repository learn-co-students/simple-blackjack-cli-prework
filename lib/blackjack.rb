def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(card_count)
  # code #display_card_total here
  puts "Your cards add up to #{card_count}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_count)
  # code #end_game here
  puts "Sorry, you hit #{card_count}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  cardTotal = deal_card
  cardTotal += deal_card
  display_card_total(cardTotal)
  return cardTotal
end

def hit?(total)
  # code hit? here
  currentTotal = total;

  prompt_user
  response = get_user_input

  if response == "h"
    currentTotal += deal_card
    return currentTotal
  elsif response == "s"
    return currentTotal
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "invalid input, try again."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end

  end_game(total)
end
