def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random = rand(1..11)
  random
end

def display_card_total(card_total)
puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
display_card_total(total)
total
end

def hit?(cards)

prompt_user

  new_card = deal_card
  input = get_user_input

   if input === "h"
     cards += new_card
   elsif input != "h" && input != "s"
     invalid_command
   end
   return cards
end

def invalid_command
  puts "Please enter a valid command"
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

welcome

card_amount = 0

card_amount = initial_round

while card_amount < 22 do

card_amount = hit?(card_amount)

display_card_total(card_amount)

end

end_game(card_amount)

end
