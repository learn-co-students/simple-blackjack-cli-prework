def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1 + rand(11)
  return card
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
  return number
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  client_action = gets.chomp
  return client_action
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  number = 0
  2.times do
    number += deal_card
  end
   display_card_total(number)
end

def hit?(total_card_count)
  prompt_user
  variable = get_user_input
  if variable == 's'
    return total_card_count
  elsif variable == 'h'
    total_card_count += deal_card
    return total_card_count
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
  total_card_count = initial_round
  cardcount = hit?(total_card_count)
  number = display_card_total(cardcount)
  end_game(number)
end
