def welcome
  # prints a welcome message to screen
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # generates a random number between 1-11
  rand((1..11))
end

def display_card_total(card_total)
  # accepts one argument, the card total, and
  # prints the value of the cards to the screen
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # gives instructions for hitting or staying
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp()
end

def end_game(card_total)
  # prints apology, card total, and thank you message
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # calls deal_card twice and returns the sum
  sum = deal_card + deal_card
  puts "Your cards add up to #{sum}"
  return sum
end

def hit?
  # code hit? here
  prompt_user
  get_user_input
  return card_total
  if user_input == "s"
    break
  end
  if user_input == 'h'
    #hit?
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
