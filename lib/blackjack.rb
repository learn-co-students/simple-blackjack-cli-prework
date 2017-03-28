def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return 1 + rand(11)
end

def display_card_total (number)
  puts "Your cards add up to #{number}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  user_input = gets.chomp
  # code #get_user_input here
end

def end_game (num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
  # code #end_game here
end

def initial_round (sum = deal_card + deal_card)
  display_card_total (sum)
  return sum
  # code #initial_round here
end

def hit? (num)
  prompt_user
  answer = get_user_input
  if answer  == 'h'
    num += deal_card
  elsif answer == 's'
  else
    invalid_command
    prompt_user
  end
  num
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
  end
  display_card_total (sum)
  end_game(sum)
end
