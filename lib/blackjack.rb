def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
   1 + rand(11)
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
  gets.chomp 
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit? (sum)
  # code hit? here
  prompt_user
  input = get_user_input
  
  if input == 's'
  
  elsif input == 'h'
   sum += deal_card
   
  else 
  invalid_command
  prompt_user
  
  end 
sum
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
  # code runner here
  welcome 
  sum = initial_round
  until sum > 21 
  sum = hit?(sum)
  display_card_total(sum)
end
end_game(sum)
end
    
