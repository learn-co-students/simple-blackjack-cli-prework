def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  num = 1 + rand(11)
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

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == "s"
    num
  elsif input == "h"
    num += deal_card
    display_card_total(num)
    num
  else
    invalid_command
    prompt_user
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round
  until card_sum > 21
    card_sum = hit?(card_sum)
  end
  end_game(card_sum)
end
