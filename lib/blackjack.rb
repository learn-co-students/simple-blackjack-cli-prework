def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  card = rand(1..11)
  # code #deal_card here
end

def display_card_total(c)
  puts "Your cards add up to #{c}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card
  card_total += deal_card
  display_card_total(card_total)
  card_total
  # code #initial_round here
end

def hit?(card_total)
 prompt_user
 input = get_user_input
if input == 'h'
    card_total = card_total + deal_card
#elsif input =='s'
#  prompt_user
end
  card_total
end


def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
until hand > 21
  hand = hit?(hand)
  display_card_total (hand)
end
end_game(hand)
  # code runner here
end
