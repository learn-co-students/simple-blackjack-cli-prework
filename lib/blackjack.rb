def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(cardTotal)
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game
  # code #end_game here
end

def initial_round
  # code #initial_round here
end

def hit?(currentTotal)
  prompt_user
  input = get_user_input
  if input == 'h'
    currentTotal += deal_card
  elsif input == 's'
    currentTotal
  else
    invalid_command
  end
  return currentTotal
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cardTotal = initial_round
  until cardTotal > 21
    hit?(cardTotal)
  end
  end_game
end
