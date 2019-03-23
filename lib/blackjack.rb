cardTotal = 0 

def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
 rand = Random.new
 rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp 
end

def end_game(score)
  puts "Sorry, you hit #{score}. Thanks for playing!"
end

def initial_round
  cards1 = deal_card
  cards2 = deal_card
  card_total = cards1 + cards2
  display_card_total(card_total)
  return card_total
end

def hit?(score)
  prompt_user
  hitYoN = get_user_input
  if hitYoN == "h"
    score += deal_card
    return score
  end  
  if hitYoN == "s"
    hit = "s"
    return score 
  end  
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  total = initial_round 
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end

    
