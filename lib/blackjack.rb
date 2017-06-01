def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11) + 1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  return total
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
#This method represents the first round of the game for a given player.
#It should call on the #deal_card method twice,
#use the #display_card_total method to puts out the sum and then return the sum.
#This method will therefore call on two other helper methods, #deal_card and #display_card_total,
#which takes in an argument of the sum of both invocations of #deal_card
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
end

def hit?(total)
  prompt_user
  answer = get_user_input
  if answer == "h"
    total += deal_card
  elsif answer == "s"
  else
    invalid_command
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
