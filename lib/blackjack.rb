def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand 1..11
end

def display_card_total (num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
  return num
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game (card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  display_card_total(deal_card+deal_card)
  return deal_card + deal_card
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

def hit? (number)
  # code hit? here
  prompt_user
  answer = get_user_input
  if answer == "s"
    return number
  elsif answer == "h"
    new_card = deal_card
    return number+new_card
  else
    return invalid_command
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here

  welcome
  x = initial_round
  #display_card_total(x)

  until x >= 21
    x = hit?(x)
    display_card_total(x)
    # CALL ON THE HIT METHOD
    # SOMEHOW ADD THE NUMBER RETURNED FROM THE FIRST TIME YOU CALLED TO THE SUBSEQUENT ONES
    # SOMEHOW FIND A WAY TO ACCOUNT FOR IT JUST SAYING TO STAY
  end

  end_game(x)
    #SOMEHOW PASS IN THE NUMBER RETURNED FROM THAT UNTIL LOOP ABOVE
end
