def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11) + 1
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
  choice = gets.chomp
end

def end_game(score)
  # code #end_game here
  puts "Sorry, you hit #{score}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  choice = get_user_input
  case choice
    when 'h'
        card_total += deal_card
    else
        invalid_command
  end
  card_total
end

def invalid_command
  # code invalid_command here
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  sum = 0
  welcome
  sum = initial_round
  until sum > 21
      sum = hit?(sum)
      display_card_total(sum)
  end
  end_game(sum)
end
