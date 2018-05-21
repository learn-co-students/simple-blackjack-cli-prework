def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1...11)
end

def display_card_total(x)
  # code #display_card_total here
  puts "Your cards add up to #{x}"
  return x
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  cardsum = card1 + card2
  display_card_total(cardsum)
  return cardsum
end

def hit?(cardtotal)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    return cardtotal
  elsif user_input == "h"
    return deal_card + cardtotal
  end
end

def invalid_command
  # code invalid_command here
   puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner()
  welcome
  cardsum = initial_round #sets cardsum equal to the sum of the first 2 cards
  until cardsum > 21
    cardsum = hit?(cardsum)
    display_card_total(cardsum)
  end
 end_game(cardsum)
  # code runner here
end
