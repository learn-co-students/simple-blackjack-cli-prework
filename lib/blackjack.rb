def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = 0
  2.times do
    total += deal_card
  end
  display_card_total(total)
  return total
end

def hit?(card_total)
  prompt_user
  ret = get_user_input
  while ret != "s" && ret != "h"
    invalid_command
    prompt_user
    ret = get_user_input
  end
  card_total += deal_card if ret == "h"
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total >= 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total) if card_total > 21
end
    
