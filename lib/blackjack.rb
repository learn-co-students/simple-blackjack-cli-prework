def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1+rand(11)
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
  gets.chomp
end

def end_game(e)
  # code #end_game here
  puts "Sorry, you hit #{e}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  hand = 0
  2.times do
    hand += deal_card
  end
  display_card_total(hand)
  hand
end

def hit?(hand)
  # code hit? here
  prompt_user
  str = ""
  str = get_user_input
  if str == "h"
    hand += deal_card
    return hand
  end
  if str == "s"
    return hand
  end

end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  hand = 0
  welcome
  hand = initial_round
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end
end_game(hand)
end
