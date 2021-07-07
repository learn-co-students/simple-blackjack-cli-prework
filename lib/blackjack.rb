def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)

end

def display_card_total (number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game (card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  number = deal_card + deal_card
  display_card_total (number)
  return number
end


def hit? (current_card)
  # code hit? here
  prompt_user
  answer = get_user_input
  total = current_card
  if answer != "s" && answer != "h"
    invalid_command
    prompt_user
  elsif answer == "s"
    return total
  elsif answer == "h"
    return deal_card + total
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
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
