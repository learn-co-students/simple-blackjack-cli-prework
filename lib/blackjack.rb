def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  hand = 0
  2.times do
    hand += deal_card
  end
  display_card_total(hand)
end

def hit?(current_hand)
  prompt_user
  response = get_user_input
    if (response == "h")
      display_card_total(current_hand + deal_card)
    elsif (response == "s")
      current_hand
    else
      invalid_command(current_hand)
  end
end

def invalid_command(current_hand)
  puts "Please enter a valid command"
  current_hand
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  until hand > 21
    hand = hit?(hand)
  end
  end_game(hand)
end
