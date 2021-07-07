def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  @a = deal_card
  @b = deal_card
  display_card_total(@a+@b)
  return @a+@b
end

def hit?(num)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
    deal = deal_card
    num = num + deal
  elsif input == "s"
    return num
  end
end

def invalid_command
  # code invalid_command here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
    until total > 21
      total = hit?(total)
      display_card_total(total)
    end
  end_game(total)
end
