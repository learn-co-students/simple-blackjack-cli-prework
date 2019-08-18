def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  round1 = deal_card
  round2 = deal_card
  card_total = round1 + round2
  display_card_total(card_total)
  card_total
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
  if input == 's'
    current_card_total
  elsif input == 'h'
    extra_round = deal_card
    current_card_total += extra_round
    current_card_total
  else
    invalid_command
    hit?(current_card_total)
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
