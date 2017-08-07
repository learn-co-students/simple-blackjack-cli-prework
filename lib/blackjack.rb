
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to "+ card_total.to_s
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  # code #get_user_input here
  return gets.chomp.to_s
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0
  sum += deal_card
  sum += deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  action = get_user_input
  if action == 'h'
    card_total += deal_card
    display_card_total(card_total)
    return card_total
  elsif action == 's'
    return card_total
  else
  invalid_command
  return card_total
  end
end



def runner
  # code runner here
  welcome
  total = initial_round
  until total>21
    total = hit?(total)
  end
  end_game(total)
end
#runner
#####################################################
# get every test to pass before coding runner below #
#####################################################
