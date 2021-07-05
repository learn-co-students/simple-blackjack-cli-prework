def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
  end

def display_card_total(number)
  phrase = "Your cards add up to #{number}"
  puts phrase
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end	
  

def hit?(current_card_total)
    prompt_user
    input = get_user_input
    
  if input == "h"
    return current_card_total += deal_card
    
  elsif input == "s"
   return current_card_total
   
    end
end
    
  
  


def invalid_command
  phrase = "Please enter a vailid command"
  puts phrase
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
 hand = initial_round
 until hand > 21 do
  hand = hit?(hand)
  display_card_total(hand)
end
end_game(hand)
  
end
    
