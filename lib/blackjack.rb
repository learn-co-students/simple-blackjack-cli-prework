def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  card = rand(1..11)
  card
  # code #deal_card here
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  input

  if (input == 's')
    nil
  elsif (input == 'h')
    card_total += deal_card
  end
  # code hit? here
  card_total
end

def invalid_command
  if get_user_input != 's' or 'h'
    puts "Please enter a valid command"
    prompt_user
  end
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
