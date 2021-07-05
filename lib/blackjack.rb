def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
  display_card_total(deal_card + deal_card)
  return deal_card+deal_card
end

def hit?(n)
  prompt_user
  action = get_user_input 
  if action == 's'
    return n 
  elsif action == 'h'
    n+=deal_card
  else  
  invalid_command
  prompt_user
end
return n 
end 

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

  
def runner
  welcome
  n = 0
  n += initial_round
  until n >= 21
  n=hit?(n)
  display_card_total(n)
end 
end_game(n)
end 
