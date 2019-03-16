def welcome
  
  # code #welcome here
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
puts "Your cards add up to #{card_total}{"
end

def prompt_user
  puts "Type "h" to hit or 's' to stay".
  # code #prompt_user here
end

def get_user_input
  # code #get_user_input here
gets.chomp.strip
end

def end_game(card_total)
  # code #end_game here
puts "Sorry, you hit #{card_total}."
end

def initial_round
  # code #initial_round here
first round = deal_card + deal_card
display_card_total = first round
return first round
end

def hit?(number)
  # code hit? here
prompt_user
input = get_user_input
if input = 's'
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
