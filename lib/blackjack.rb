def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(cards)
  # code #end_game here
  puts "Sorry, you hit #{cards}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0

  2.times do
    card = deal_card
    sum += card
  end

   display_card_total(sum)
   return sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  answer = get_user_input

  if answer == 'h'
    card_total += deal_card
  elsif answer == 's'
    card_total
  end
  return card_total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  current = initial_round

  until current > 21
    current = hit?(current)
    display_card_total(current)
  end

  end_game(current)
end
