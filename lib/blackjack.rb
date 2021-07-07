def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
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

def end_game(bust_total)
  puts "Sorry, you hit #{bust_total}. Thanks for playing!"
end

def initial_round
  result = 0
  2.times do
    result += deal_card
  end
  display_card_total(result)
  result
end

def hit?(result)
  prompt_user
  input = get_user_input
  if input == 's'
    result
  elsif input == 'h'
    result += deal_card
  else
    invalid_command
    hit?(result)
  end
end

def invalid_command
    puts "Invalid command"
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
