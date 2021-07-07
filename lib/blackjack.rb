def welcome
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal_1 = deal_card
  deal_2 = deal_card
  card_total = deal_1 + deal_2
  display_card_total(card_total)
    return card_total
end


def hit?(int)
  prompt_user
  answer = get_user_input
  
  if answer == "s"
    return int
  elsif answer == 'h'
    deal_1 = deal_card
    return deal_1 + int
  else
    invalid_command
    return int 
  end
  
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  #first, they are welcome'd
  welcome
  #then they will be dealt two cards in the initial round, the value is saved in running_total,  
  running_total = initial_round
  #Use a until loop, and ask if they wanna hit or stay using hit? function:
  until running_total > 21
    running_total = hit?(running_total)
    display_card_total(running_total)
    
  end
  #Once the loop stops, the game ending function runs telling them the full hand, 
  end_game(running_total)
end
    
