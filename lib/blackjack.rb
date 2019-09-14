def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(cardTotal)
  # code #display_card_total here
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(cardTot)
  # code #end_game here
  puts "Sorry, you hit #{cardTot}. Thanks for playing!"

end

def initial_round
  # code #initial_round here
  var = deal_card
  var += deal_card
  display_card_total(var)
  return var
end

def hit?(cardTotal)
  # code hit? here
  prompt_user
  var = cardTotal
  user_input = get_user_input

  if user_input == 's' || user_input == 'h'
    var
    if user_input == 'h'
    var += deal_card
    display_card_total(var)
      if var > 21
        end_game(var)
      end
    else
      var
    end
  else
    invalid_command
    var
  end
  var
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hit?(initial_round)
end
