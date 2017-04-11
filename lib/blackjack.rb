def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  (1..11).to_a.sample
  # code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  input = nil
  until input == 's' || input == 'h' || input == 'exit'
    input = gets.chomp
  end
  input
  # code #get_user_input here
end

def end_game(total)

  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total

  # code #initial_round here
end

def hit?(total)
  prompt_user
  input = get_user_input
  until input == 'h' || input == 's'
    invalid_command
    prompt_user
    input = get_user_input
  end

  if input == 'h'
    total += deal_card
  elsif input == 's'
    total
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
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
