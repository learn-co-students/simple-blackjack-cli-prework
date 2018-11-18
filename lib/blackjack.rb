def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  num = 1 + rand(10)
end

def display_card_total (total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  response = gets.chomp
end

def end_game (total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  num1 = deal_card
  num2 = deal_card
  total = num1 + num2
  display_card_total (total)
  total
end

def hit? (total)
  prompt_user
  response = get_user_input
  flag = true
  while flag
    if response == 'h'
      total += deal_card
      break
    elsif response == 's'
      total += 0
      break
    else
      invalid_command
    end
  end
  total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = 0
  total += initial_round
  until total > 21
    total = hit? (total)
  end
  display_card_total (total)
  end_game (total)
end
