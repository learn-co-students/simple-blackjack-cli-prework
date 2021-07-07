def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11) + 1
end

def display_card_total(cards)
  puts "Your cards add up to #{cards}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  input
end

def end_game(cards)
  puts "Sorry, you hit #{cards}. Thanks for playing!"
end

def initial_round
  cards = deal_card
  cards += deal_card
  display_card_total(cards)
  cards
end

def hit?(cards)
  prompt_user
  input = get_user_input
  if (input == "h")
    cards += deal_card
  elsif (input == "s")
    cards
  else
    invalid_command
    hit?
  end
  cards
end

def invalid_command
  puts  "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cards = initial_round
  until cards > 21 do
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
