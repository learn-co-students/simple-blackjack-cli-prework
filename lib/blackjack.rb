def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total_end)
  puts "Sorry, you hit #{card_total_end}. Thanks for playing!"
end

def initial_round
  initial_count = deal_card + deal_card
  display_card_total(initial_count)
  return initial_count
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 's'
    new_total = card_total
  elsif input == 'h'
    new_total = card_total + deal_card
  else
    return invalid_command
  end
  return new_total
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  running_total = initial_round
  until running_total > 21
    running_total = hit?(running_total)
    display_card_total(running_total)
  end
  end_game(running_total)
end


  #welcome user
  #deal initial cards, save to variable
  #within a loop, do the following until hand is greater than 21
  	#call the hit method, which asks if user wants to hit or stay
  #call the end of game method

  # hand = initial_round
  # until hand > 21
  #   hand = hit?(hand)
  # end
  #
  # #for example
