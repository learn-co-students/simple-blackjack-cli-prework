def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
    return rand(1..11)
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
  return gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"

end

def initial_round
  # code #initial_round here
  c1 = deal_card
  c2 = deal_card
  display_card_total(c1+c2)
  return c1+c2
end

def hit?(total)
  # code hit? here
  prompt_user
  arg = get_user_input
  if arg == "h"
    total += deal_card
  end
  return total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  ini = initial_round
  until( ini > 21)
    temp = hit?(ini)
    ini = temp
  end
  display_card_total(ini)
  end_game(ini)
end
