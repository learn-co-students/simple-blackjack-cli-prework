def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  player_choice = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
   sum = deal_card + deal_card
   display_card_total(sum)
   return sum
end

def hit?(current_total)
  # code hit? here
  prompt_user
  answer = get_user_input

  if answer == 's'
    current_total
  elsif answer == 'h'
    current_total += deal_card
  else
     invalid_command
  end
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
  game = initial_round
  until game > 21
    game = hit?(game)
    display_card_total(game)
  end
  end_game(game)
end
