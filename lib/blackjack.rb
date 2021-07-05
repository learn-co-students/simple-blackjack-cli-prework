def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  Random.new.rand(1..11)
end

def display_card_total(current_total)
  puts "Your cards add up to #{current_total}"
  current_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(current_total)
  puts "Sorry, you hit #{current_total}. Thanks for playing!"
end

def initial_round
  start_total = deal_card
  current_total = start_total + deal_card
  display_card_total(current_total)
  current_total
end

def hit?(current_total)
  prompt_user
  get_user_input == "h" ? current_total += deal_card : current_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_total = initial_round
  until current_total > 21
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
  end_game(current_total)
end
