def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  card_total = card_1 + card_2
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  choice = get_user_input

  if choice == 'h'
    new_card = deal_card
    card_sum = card_total + new_card
  elsif choice == 's'
    card_sum = card_total
  elsif choice != 'h' && choice != 's'
    invalid_command
    hit?(card_total)
  end

  return card_sum
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round
  if card_sum > 21
    end_game(card_sum)
  end

  while card_sum <= 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end

  end_game(card_sum)
end
