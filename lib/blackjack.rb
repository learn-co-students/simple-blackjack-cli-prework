def welcome
  # code #welcome here
  
  puts "Welcome to the Blackjack Table" 
  
  
  
end

def deal_card
  # code #deal_card here
  return rand(1..11)
  
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  total
  
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
  
  
  
end

def get_user_input
  # code #get_user_input here
  ans = gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  
  
  sum = deal_card() + deal_card()
  display_card_total(sum)
end

def hit?(total)
  # code hit? here
  prompt_user
  if get_user_input == 'h'
    total += deal_card
  end
    total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome  
  total = initial_round
   while total < 21
    total = hit?(total)
    total = display_card_total(total)
  end
  end_game(total)
end
    
