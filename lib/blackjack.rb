def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand (1..11)
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

def end_game(card_total_end)
  # code #end_game here
  puts "Sorry, you hit #{card_total_end}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  initial_count = deal_card + deal_card
  display_card_total(initial_count)
 return initial_count
end

def hit?
  # code hit? here
  def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

def invalid_command
  # code invalid_command here
  def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 's'
    new_total = card_total
  elsif input == 'h'
    new_total = card_total + deal_card
  else
    return invalid_command
  end
  return new_total
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  running_total = initial_round
    until running_total > 21
      running_total = hit?(running_total)
      display_card_total(running_total)
    end
 end_game(running_total)
end
