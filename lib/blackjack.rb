def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
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
  answer = gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0
  counter = 0
  loop do
      counter += 1
      sum += deal_card
      if counter == 2
          display_card_total(sum)
          return sum
      end
  end
end

def hit?(card)
  # code hit? here
  prompt_user
  answer = get_user_input
  if answer == "h"
      card += deal_card
      return card
  end
  return card
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card = initial_round
  sum = 0
  until sum > 21
      sum += hit?(card)
      display_card_total(sum)
  end
  return end_game(sum)
end
    
