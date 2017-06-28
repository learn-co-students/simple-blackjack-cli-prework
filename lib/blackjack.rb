require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end
# welcomes player

def deal_card
  rand(1..11)
end
#deals one card (useless on its own)

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end
#prompts user to deal_card or not

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end
#displays card total but does not do calculations?

def get_user_input
  input = gets.chomp
  #input
end
# takes in input s or p

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

# runs at the end of the game

def initial_round
  display_card_total(deal_card + deal_card)
  # binding.pry
end
# returns a value of the first round i.e initial_round ?

def invalid_command
  puts  "Please enter a valid command"
end

def hit?(initial_round)
  prompt_user
  # says hello
  answer = get_user_input
  # input stored as answer
  if answer == 'h'
    total = deal_card + initial_round
  elsif answer == 's'
    total = initial_round
  else
    invalid_command
    prompt_user
  end
  total
  # returns the new total
end
#####################################################

def runner
  welcome
  #initial_round
  new_total = hit?(initial_round)
  # display_card_total(new_total)
  sum = 0
  while sum < 21
    # binding.pry
    sum += new_total
    #puts "we're summing again"
    display_card_total(sum)
    #puts "WHY ARE WE DOING THIS TWICE"
  end
  end_game(sum)
end

runner
