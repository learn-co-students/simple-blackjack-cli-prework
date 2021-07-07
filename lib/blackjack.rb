def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(11)+1
end

def display_card_total (card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  return card_total

end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user = gets
end

def end_game(card_total)
  # code #end_game here
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)

end

def hit?
  # code hit? here
  get_user_input
  if get_user_input != "h" || get_user_input != "s"
    invalid_command
  else
    return get_user_input
  end
end

end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  prompt_user
  get_user_input
  if get_user_input == "h"
    card_total = deal_card + card_total
    display_card_total(card_total)
  elsif get_user_input == "s"
    prompt_user
  end
  if card_total > 21
  end_game
end

  end


end
