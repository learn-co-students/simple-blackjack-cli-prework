
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
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

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def invalid_command
  puts "What? No, that is not a valid option"
  prompt_user
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  until user_input == "h" || user_input == "s"
    invalid_command
    user_input = get_user_input
  end
  case user_input
  when user_input = "h"
    card_total += deal_card
  when user_input = "s"
    card_total
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total >= 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
end

#with the below method, I can only get the program to run twice if "y"
#I will need to come back later to properly figure out how to keep it running

def try_again?
  puts "Would you like to try again? Y/N?"
  input = gets.chomp
  until input == "Y" || input == "y" || input == "N" || input =="n"
    puts "What, no that's not an option"
    puts "Would you like to try again? Y/N?"
    input = gets.chomp
  end
  if input == "Y" || input == "y"
    runner
  elsif input == "N" || input == "n"
    puts "Goodbye!"
  end
end
