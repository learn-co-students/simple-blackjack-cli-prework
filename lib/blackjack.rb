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

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  num1 = deal_card
  num2 = deal_card
  sum = num1 + num2
  display_card_total sum
  sum
end

def invalid_command
  puts "This is an invalid command!"
end

def hit?(arg)
  prompt_user
  answer = get_user_input
  if answer == 'h'
    arg += deal_card
    display_card_total arg
  end
  arg
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_sum = initial_round
  total = hit? initial_sum
  end_game total
end