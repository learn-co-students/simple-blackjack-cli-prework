def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  a = deal_card
  b = deal_card
  display_card_total(a + b)
  a + b
end

def hit?(n)
  prompt_user
  input = get_user_input
  if input == 'h'
    n += deal_card
  elsif input == 's'
    n
  else
    invalid_command
    hit?(n)
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
  n = initial_round
  until n > 21 do
    n = hit?(n)
    display_card_total(n)
  end
  end_game(n)
end