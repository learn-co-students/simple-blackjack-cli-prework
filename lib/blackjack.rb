def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand((1..11))
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
  input = gets
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum1 = deal_card
  sum2 = deal_card
  sum = sum1 + sum2
  display_card_total(sum)
  return sum
end

def hit?(cur_num)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 's'
    cur_num
  elsif input == 'h'
    new_card = deal_card
    cur_num += new_card
  else
    invalid_command
    prompt_user
    cur_num
  end 
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cur_num = initial_round
  final_num = hit?(cur_num)
  if final_num >= 21
  end_game(final_num)
  end
  puts "Your cards add up to #{final_num}"
end
    
