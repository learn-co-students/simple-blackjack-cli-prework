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
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  str = gets.chomp
  
end

def end_game(point)
  # code #end_game here
  if( point > 21 )
    puts "Sorry, you hit #{point}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  point =  deal_card() + deal_card()
  display_card_total(point)
  return point
end

def hit?(point)
  # code hit? here
  prompt_user()
  res = get_user_input
  if res == "h"
    return point + deal_card()
  else
    return point
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  
  welcome()
  point = initial_round()
  while point<=21
    point = hit?(point)
    display_card_total(point)
  end
  end_game(point)
end
