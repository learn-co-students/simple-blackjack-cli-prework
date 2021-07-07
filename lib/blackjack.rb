def welcome
puts "Welcome to the Blackjack Table"  # code #welcome here
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  input = gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total# code #initial_round here
end

def hit?(score)
  prompt_user
  play = get_user_input
  if play == 'h'
    score = score + deal_card
    score
  elsif play == 's'
    score
  else
    invalid_command
  end

  # code hit? here
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
  hand = initial_round
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end
end_game(hand)      
# code runner here
end
