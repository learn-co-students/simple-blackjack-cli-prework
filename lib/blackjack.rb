def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return Random.rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit? (number)
  prompt_user
  input = get_user_input
  if input == 's'
    !deal_card
  elsif input == 'h'
    number += deal_card
  else
    invalid_command
    prompt_user
  end
  return number
end

def invalid_command
  "Please enter a valid command"
end

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
