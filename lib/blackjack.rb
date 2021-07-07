
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
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  selection = get_user_input
  if selection == "s"
      card_total
  elsif selection == "h"
      next_card = deal_card
      current_total = card_total + next_card
      current_total
  else
      invalid_command
      prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_sum = initial_round
  until current_sum > 21
      current_sum = hit?(current_sum)
      display_card_total(current_sum)
  end
  end_game(current_sum)
end




