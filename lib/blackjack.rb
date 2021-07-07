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
  user_input = gets.chomp.strip
end

def end_game(card_total)
  # prints apology, card total, and thank you message
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # calls deal_card twice and returns the sum
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  puts "Your cards add up to #{sum}"
  return sum
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    return card_total
  elsif user_input == 'h'
    new_card = deal_card
    card_total = card_total + new_card
    return card_total
  else invalid_command
  end

end


def invalid_command
  user_input = get_user_input
  until user_input == 's' || user_input == 'h'
    puts "Please enter a valid command"
    user_input = get_user_input
  end

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
