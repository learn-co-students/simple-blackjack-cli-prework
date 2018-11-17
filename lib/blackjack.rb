card_total = 0

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
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
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  action = get_user_input
  if action == 'h'
    card = deal_card
    card_total = card_total + card
    return card_total
  elsif action == 's'
    return card_total
  else 
    invalid_command
    return card_total
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
  welcome
  initial = initial_round
  card_total = hit?(initial)
  display_card_total(card_total)
  until card_total > 21
    hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
