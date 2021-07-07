def welcome
 puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here

end

def display_card_total(the_current_card_total)
 
  
  puts "Your cards add up to #{the_current_card_total}"

  #puts "Your cards add up to 12"

 # code #display_card_total here
end

def prompt_user  
   puts "Type 'h' to hit or 's' to stay"
   
   # code #prompt_user here
end


def get_user_input

 input = gets. chomp 
return input

  # code #get_user_input here
end


def end_game(user_input)
  
  
  puts "Sorry, you hit #{user_input}. Thanks for playing!"

  # code #end_game here
end

def initial_round




the_current_card_total = deal_card + deal_card
display_card_total(the_current_card_total)
return the_current_card_total 




 

  # code #initial_round here
end

def hit?(the_current_card_total)
  prompt_user
  input = get_user_input
  while input != "s" && input != "h"
    invalid_command
    prompt_user
    input = get_user_input
end
  if input == "s"
    return the_current_card_total 
   elsif  input == "h"
    return the_current_card_total  += deal_card
    
 end

end

def invalid_command
 puts "Sorry,Your entry is invalid"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
 the_current_card_total = initial_round
  

  
 until the_current_card_total > 21

  the_current_card_total = hit?(the_current_card_total)
display_card_total(the_current_card_total)

  
  #the_current_card_total += deal_card
 #display_card_total(the_current_card_total)
end
end_game(the_current_card_total)
  # code runner here
end
    
