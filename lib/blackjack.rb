def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  return number=rand(1..11)
  # code #deal_card here
end

def display_card_total(number)
  card_total=number 
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  answer=gets.chomp 
  return answer
end

def end_game(number)
  card_total=0 
  card_total+=number
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  number= deal_card + deal_card
  display_card_total(number)
  return number
  # code #initial_round here
end

def hit?(number)
  prompt_user
  input=get_user_input
  if input == "h"
    number+=deal_card
    return number
  elsif input =="s"
    return number
  else
    return invalid_command
  end 
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  card_total
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number=initial_round
  
  until number > 21
    hit?(number)
    display_card_total(number)
  end
  end_game
  # code runner here
end

