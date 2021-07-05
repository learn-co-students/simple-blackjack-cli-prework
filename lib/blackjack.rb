def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  puts rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game
  # code #end_game here
  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  deal_card
  deal_card
  display_card_total

end

def hit?(number)
  # code hit? here
  prompt_user
  get_user_input
  if input == h
  deal_card
  display_card_total
else if input != h || input !==s
  invalid_command
  prompt_user
else display_card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
initial_round
prompt_user
hit?
get_user_input
hit?
display_card_total
end
