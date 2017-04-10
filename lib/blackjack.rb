def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card()
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  return total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.strip
end

def end_game(x)
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  a = deal_card() + deal_card()
  display_card_total(a)
  a
end

def hit?(num)
  prompt_user()
  puts "Type 'h' to hit or 's' to stay"
  ui = get_user_input()
  if ui == "h"
    num += deal_card()
    display_card_total(num)
  elsif ui == "s"
    display_card_total(num)
  else
    invalid_command()
  end
end

def invalid_command
  puts "Sorry, not a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

end
