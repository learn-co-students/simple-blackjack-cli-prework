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
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  # stores the value of the deal_card into variable named card1
  card1 = deal_card
  # stores another deal_card value into variable named card2
  card2 = deal_card
  # sums the 2 cards value
  initial_card_total = card1 + card2
  # invokes the display_card_total method to output the required string
  display_card_total(initial_card_total)
  # returns the sum
  initial_card_total
end

def hit?(current_card_total)
  # code hit? here
  # invoke prompt_user method
  prompt_user
  # invoke get_user_input method and assigns the value to the variable answer
  answer = get_user_input
  if answer == "h"
    card3 = deal_card
    current_card_total += card3
  elsif answer == "s"
    current_card_total
  else
    invalid_command
    prompt_user
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
  # code runner here
  welcome
  curr_card_total = initial_round
  until curr_card_total > 21
    new_card_total = hit?(curr_card_total)
    display_card_total(new_card_total)
    curr_card_total = new_card_total
  end
    end_game(curr_card_total)

end
