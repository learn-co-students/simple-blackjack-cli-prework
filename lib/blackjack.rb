def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(current_sum)
  prompt_user
  answer = get_user_input
  if answer == 's'
     return current_sum
  elsif answer == 'h'
     current_sum += deal_card
  else answer != 'h' or 's'
     invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total_card_sum = initial_round
  until total_card_sum > 21
    total_card_sum = hit?(total_card_sum)
    display_card_total(total_card_sum)
  end
  end_game(total_card_sum)
end
