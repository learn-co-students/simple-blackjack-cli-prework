def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  number = card_total
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer=gets.chomp
  return answer
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card+deal_card
  display_card_total(sum)
  return sum
end

def hit?(current_card_total)
  prompt_user
  x=get_user_input
    if x == "h"
        d = deal_card
        return current_card_total + d
    elsif x =="s"
    return current_card_total
    else
        invalid_command
        prompt_user
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
    
    welcome
    x=initial_round
    y=hit?(x)
    display_card_total(y)
    if y >21
        end_game(y)
        end
end
    
