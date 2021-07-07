def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1+rand(11)
end

def display_card_total(num)
 puts "Your cards add up to #{num}"
end

def prompt_user
   puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  num1=deal_card
  num2=deal_card
  num3=num1+num2
  display_card_total(num3)
  return num3
end

def hit?(num)
  prompt_user
  input=get_user_input
  if input=="h"
    num+=deal_card
    return num
  elsif input=="s"
    return num
  elsif input!="h"&& input!="s"
  invalid_command
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
  num = initial_round
  until num > 21 
    sum = hit?(num)
    display_card_total(num)
  end
  end_game(num)
end
