def welcome
  puts "Welcome to the Blackjack Table"
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
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = (deal_card) + (deal_card)
  display_card_total(sum)
  return sum
end

def hit?(num = initial_round)
  prompt_user
  answer = get_user_input
  if answer == 's'
    return num
  end
  if answer == 'h'
    return (num + deal_card)
  end
  if answer != 's' || answer != 'h'
    return invalid_command
  end
end

def invalid_command
  puts "Please enter a valid commaand"
  return hit?(initial_round)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  welcome
  counter = 0
  counter += initial_round
  until counter > 21
  counter += (hit?(counter) - counter)
  display_card_total(counter)
  end 
   end_game(counter)
 end
    
