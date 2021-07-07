def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.strip
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  return card1 + card2

end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input
  
  if input == 'h'
    return total += deal_card
   
  elsif input == 's'
    return total
  else 
    invalid_command
    prompt_user
  end
end

def invalid_command
  # code invalid_command here
  put "Please enter a valid command"
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  input = initial_round
  until input> 21
      input = hit?(input)
      display_card_total(input)
    end
    end_game(input)
end
