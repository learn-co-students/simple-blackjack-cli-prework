def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  value1 = deal_card
  value2 = deal_card
  card_total = value1 + value2
  display_card_total(card_total)
  card_total
  # code #initial_round here
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == 'h'
    deal_card + number
  elsif input == 's'
    number
  elsif input != 'h' && 's'
    invalid_command
    hit?(number)
  end

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
    number = initial_round
    card_total = hit?(number)
    display_card_total(card_total)
  until card_total > 21
    card_total = hit?(number)
    display_card_total(card_total)
  end
  end_game(card_total)
  # code runner here
end
