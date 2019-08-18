def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(10) + 1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(end_total)
  puts "Sorry, you hit #{end_total}. Thanks for playing!"
end

def initial_round
  display_card_total(deal_card + deal_card)
end

def hit?(new_total)
  prompt_user
  input = get_user_input
  if input == "h" then
    new_total += deal_card
  elsif input == "s" then
    new_total
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
