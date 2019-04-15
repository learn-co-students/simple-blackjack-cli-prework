require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  card
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp 
end

def end_game(total)
 if total > 21
   puts "Sorry, you hit #{total}. Thanks for playing!"
 end 
end

def initial_round
 total = 0 
  total += deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(total)
 prompt_user
 prompt = get_user_input
 if prompt == "s"
    total
 elsif prompt == "h" 
   total += deal_card
 else 
   invalid_command
 end 
 total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
    until total >= 21 
   total = hit?(total)
    display_card_total(total)
  end 
  end_game(total)
end
    
