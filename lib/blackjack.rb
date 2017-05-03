def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  randomNumb = rand(1...11)
  puts "Random Number is #{randomNumb}"
  return randomNumb
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  firstNumber = deal_card
  secondNumber = deal_card
  display_card_total(firstNumber + secondNumber)
  return firstNumber + secondNumber
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == "h"
    number += deal_card
    number
  elsif input == "s"
    number
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  userHand = initial_round
  until userHand > 21
    userHand = hit?(userHand)
    display_card_total(userHand)
  end
  end_game(userHand)
end
