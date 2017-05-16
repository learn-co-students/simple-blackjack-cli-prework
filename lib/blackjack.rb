def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(n)
  # code #display_card_total here
  puts "Your cards add up to #{n}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(n)
  # code #end_game here
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0
  2.times {sum += deal_card}
  display_card_total(sum)
  sum
end

def hit?(n)
  # code hit? here
  prompt_user
  action = get_user_input
  case action
    when "h"
      n += deal_card
    when "s"
      return n
    else
      invalid_command
  end
  n
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end
end_game(hand)
end
