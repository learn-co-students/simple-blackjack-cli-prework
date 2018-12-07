def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 card = rand(1..11)
end

def display_card_total(card_num)
  puts "Your cards add up to #{card_num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  end

def get_user_input
 answer = gets.chomp
end

def end_game(card_num)
  puts "Sorry, you hit #{card_num}. Thanks for playing!"
end

def initial_round
  round_one = deal_card
  round_two = deal_card
  card_total = round_one + round_two
  display_card_total(card_total)
  card_total
end

def hit?(card_num)
  prompt_user
  input = get_user_input
  if input == "h"
    card_num += deal_card
  elsif input == "s"
    card_num
  else
    invalid_command
 end
end

def invalid_command
	puts "Invalid Command"
	prompt_user
  gets_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
    until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
    
