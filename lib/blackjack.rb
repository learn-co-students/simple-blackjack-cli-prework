def welcome
  # code #welcome here
end

def deal_card
  # code #deal_card here
end

def display_card_total
  while card_total < 21
  hit += card_total
end

def prompt_user
  # code #prompt_user here
end

def get_user_input
  # code #get_user_input here
end

def end_game
  # code #end_game here
end

def initial_round
  # code #initial_round here
end

def hit?
  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
 initial_round
 current_total = initial_round
 while current_total < 21
 current_total = hit?
 (current_total)
end
display_card_total(current_total)
end_game(current_total)
end
