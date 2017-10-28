def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  Random.rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = 0
  2.times do
    card_total += deal_card
  end

  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  new_total = card_total

  case get_user_input
    when 's'
    #do nothing
    when 'h'
      new_total = card_total + deal_card
    else
      invalid_command
  end

  new_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = hit?(initial_round)
  until total > 21
    temp = hit?(total)
    total = total + temp
    display_card_total(total)
  end
  display_card_total(total)
  end_game(total)
end
