def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1 + rand(11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"

end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card
  sum += deal_card
  display_card_total(sum)
  sum
end

def hit?(total)
  prompt_user
  answer = get_user_input
  if answer == "h"
    new_card = deal_card
    total += new_card
    total
  elsif answer == "s"
    total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total >= 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
