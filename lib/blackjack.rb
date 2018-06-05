def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(totes)
  # code #display_card_total here
  puts "Your cards add up to #{totes}"
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
  one_card = deal_card
  two_card = deal_card
  sum = one_card+two_card
  display_card_total(sum)
  return sum
end

def hit?(current_total)
  # code hit? here
  prompt_user
  s_or_h = get_user_input
  if s_or_h == "h"
    new_card = deal_card
    new_current = new_card + current_total
    return new_current
  elsif s_or_h == "s"
    return current_total
  else 
    invalid_command
    prompt_user
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  #prompt_user
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
