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

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  #code initial_round here
  2.times {
  deal_card
  }
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(current_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
   current_total += deal_card
  elsif input == 's'
    current_total
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round #no need to call deal_card again since initial_round does it for us
 # returns integer #this line both assigns a value, stores the value AND calls a method (initial_round)
  until total > 21 do
    total = hit?(total) # returns integer #important to put the new variable before the method. Again, here we are assigning a value, AND calling a method
    display_card_total(total) #returns string
  end
  end_game(total)
end
