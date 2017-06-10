def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(total_cards)
  # code #display_card_total here
  puts "Your cards add up to #{total_cards}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  answer = gets.chomp
end

def end_game(sum)
  # code #end_game here
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(arg)
  # code hit? here
  prompt_user
  answer = get_user_input

  if answer == 's'
     arg
  elsif answer == 'h'
      arg + deal_card
  else invalid_command
    hit?(arg)
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
  card_sum = initial_round

  until card_sum > 21 do
    new_sum = hit?(card_sum)
    display_card_total(new_sum)
    card_sum = new_sum
  end
    end_game(card_sum)
end
    
