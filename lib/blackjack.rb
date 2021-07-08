def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
 rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"# code #end_game here
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
  # code #initial_round here
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
    if answer == "h" then
      card_total += deal_card
    else
      card_total
    end
end


def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
  card_total = hit?(card_total)
  display_card_total(card_total)
end
end_game(card_total)
end
    
