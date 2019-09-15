def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  card = Random.rand(1..11)
  return card 
end

def display_card_total(card_total)
 puts  "Your cards add up to #{card_total}"
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
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  return total 
end

def hit?(num)
  prompt_user
  user_response = get_user_input
    if user_response == "s"
      return num 
    elsif user_response == "h"
      new_card = deal_card
      num += new_card
      return num 
    else 
      invalid_command
      prompt_user
    end 
end

def invalid_command
 puts "Please enter a valid command"
end


def runner 
  counter = 0
  welcome 
  card_sum = initial_round
    until counter > 21
      new_sum = hit?(card_sum)
      display_card_total(new_sum)
      counter = new_sum
      end
  end_game(counter)
end 

    
  
  


