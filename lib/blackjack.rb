def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(totalCards)
  puts "Your cards add up to #{totalCards}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = 0
  sum = deal_card
  sum += deal_card
  display_card_total(deal_card + deal_card)
  return sum
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if(input == 'h')
    card_total += deal_card
  elsif(input == 's')

  else
    invalid_command
    prompt_user
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
