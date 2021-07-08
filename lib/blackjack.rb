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
  input = gets.chomp
  return input
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  num1 = deal_card
  num2 = deal_card
  sum = num1 + num2
  display_card_total(sum)
  sum
end

def hit?(total)
  prompt_user
  if get_user_input == 'h'
    total += deal_card
  end

  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  
  until sum > 21
    hit?(sum)
    sum += deal_card
    display_card_total(sum)
  end

  end_game(sum)
end
