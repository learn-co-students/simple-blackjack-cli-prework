def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1+rand(10)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
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
card_total=deal_card+deal_card
display_card_total(card_total)
return card_total
end

def hit?(card_total)
prompt_user
z=get_user_input
if z == "s"
  card_total=card_total
  return card_total
  elsif z == "h"
  new_card=deal_card
  card_total=new_card+card_total
  return card_total
else
  invalid_command
end

end

def invalid_command
  puts "Please enter a valid command"
end


def runner
  welcome
  hand=initial_round
  until hand>21 do
    hand2=hand
  hand=hit?(hand)
  display_card_total(hand)
   break if hand2 == hand
    
  end
end_game(hand)
  
end
 