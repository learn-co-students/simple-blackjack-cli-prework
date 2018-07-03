def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  Random.new.rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  return card_total

end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp

end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  return display_card_total(total)

end

def hit?(num)
  # code hit? here
  prompt_user
  input = get_user_input

  if input == "h"
    new_card = deal_card
    total = num + new_card
  elsif input == "s"
    total = num
  else
    invalid_command
  end
  return total


  # if get_user_input != "h" || get_user_input != "s"
  #   puts "Please enter a valid command"
  #   prompt_user
  # elsif get_user_input == "h"
  #   new_card = deal_card
  #   total = num + new_card
  #   return total
  # end

end

def invalid_command
  # code invalid_command here
  if get_user_input != "h" || get_user_input != "s"
    puts "Please enter a valid command"
    prompt_user
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = 0
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end
  end_game(card_total)
end
