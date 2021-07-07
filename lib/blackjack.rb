def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1 + rand(11)
end


def display_card_total(card_total)
  # code #display_card_total here
  puts"Your cards add up to #{card_total}"

end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
  gets.chomp

end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum =  deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(num)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "s"
    return num
  elsif input == "h"
    return num = (deal_card + num)
  else
     invalid_command
    num
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
#   Welcome the user
# Deal them their first two cards, i.e. their initial_round
# Ask them if they want to hit or stay
# If they want to hit, deal another card
# If they want to stay, ask them again!
# If their card total exceeds 21, the game ends.

welcome
  total = initial_round
  while total < 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)

end
