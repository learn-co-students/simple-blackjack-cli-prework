def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11) + 1
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
  input = gets.chomp
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  return total
end

def hit?(total)
  # code hit? here
  prompt_user
  move = get_user_input
  if (move == 'h')
    total += deal_card
  elsif (move == 's')
    total
  else
    invalid_command
    hit?(total)
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
  player = initial_round
  until player > 21
    player = hit?(player)
    display_card_total(player)
  end
  end_game(player)
end
    
