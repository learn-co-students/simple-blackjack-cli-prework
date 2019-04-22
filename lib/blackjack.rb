
def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  card=rand(1..11)
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
  gets.chomp
  # code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  total=0
  2.times do
    total+=deal_card
  end
  display_card_total(total)
  total
end
  # code #initial_round here


def hit?(total)
  prompt_user
  react=get_user_input
  if react=='h'
    total+=deal_card
    total
  elsif react=='s'
    total+=0
    total
  else
    invalid_command
  end
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total=initial_round
  until total>21
    total=hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
