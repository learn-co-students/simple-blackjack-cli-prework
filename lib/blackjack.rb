def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(arg)
  # code #display_card_total here
  puts "Your cards add up to #{arg}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  hors = gets
  return hors
  # code #get_user_input here
end

def end_game(card)
  # code #end_game here
  puts "Sorry, you hit #{card}. Thanks for playing!"


end

def initial_round
  sum = deal_card + deal_card
  puts "Your cards add up to #{sum}"
  return sum
  # code #initial_round here
end

def hit?(h)
  total = h
  prompt_user
  if get_user_input == "h"
    total += deal_card
  end
  else
   return total

  # code hit? here

end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card = initial_round
  card = hit?(card)
  if card > 21
    end_game(card)
  end
  display_card_total(card)


end
