def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  return rand(1..11)# code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp# code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"# code #end_game here
end

def initial_round
  total = deal_card + deal_card
  print display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == 's'
  elsif input == 'h'
    total += deal_card
  else
    invalid_command
    prompt_user
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
  total = initial_round
  until total >= 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
