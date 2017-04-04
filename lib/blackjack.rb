# Blackjack mini game built in modular form. Yes you can actually win this one.

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  a = deal_card
  b = deal_card
  total = a + b
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  hit_or_stay = get_user_input
  if hit_or_stay == 's'
    total
  elsif hit_or_stay == 'h'
    total += deal_card
  else
    invalid_command
    prompt_user
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

def if_21(hand)
  if hand == 21
    puts "Blackjack! You got #{hand}!"
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  if_21(hand)
  until hand >= 21
    hand = hit?(hand)
    display_card_total(hand)
    if_21(hand)
  end
  if hand > 21
    end_game(hand)
  end
end
