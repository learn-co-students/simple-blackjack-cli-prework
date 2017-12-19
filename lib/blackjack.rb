def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = 1 + rand(11)
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
  input
end

def end_game (input)
  # code #end_game here
  puts "Sorry, you hit #{input}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
  card_total
end

def hit? (initial_round)
  prompt_user
  input = get_user_input
  if input == 'h' then 
    card_total = initial_round + deal_card
  elsif input == 's' then
     card_total = initial_round
  else 
    invalid_command
  end
  card_total
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
 
  card_total = initial_round
  until card_total > 21
 
  card_total = hit?(card_total)
  display_card_total(card_total)
end
  end_game(card_total)
end
    
