
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = 1 + rand(11)

end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  return "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
user_input = gets.chomp
return user_input
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round

card_total = (deal_card)+(deal_card)

display_card_total(card_total)

return card_total

end

def hit?(card_total)
  prompt_user
  response = get_user_input

  if response == "h"
    card_total += deal_card

return card_total

elsif response == "s"
  return card_total
else
  invalid_command
  prompt_user
end

end

def invalid_command
  puts "That is an invalid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

welcome
total = initial_round
until total > 21
  counting = hit?(total)
  total = counting
  display_card_total(total)
end
end_game(total)
end
