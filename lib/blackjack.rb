def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
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
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(num)
  prompt_user
  input = get_user_input
    until input == "h" || input == "s"
      invalid_command
      prompt_user
      get_user_input
     end 
    if input == "h"
      num += deal_card
    end
  num
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################




def runner
  welcome
  card_sum = initial_round
  until card_sum > 21
   card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
    end_game(card_sum)
end
    
