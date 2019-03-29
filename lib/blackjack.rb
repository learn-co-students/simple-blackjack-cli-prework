def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..7)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  
  return gets.chomp
end

def end_game(message)
  puts "Sorry, you hit #{message}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(num)
  prompt_user
  user_input = get_user_input
  if user_input == "s"  
   return num 
  elsif user_input == "h"
    return num + deal_card
  else invalid_command
  end
end


def invalid_command
  puts "Please enter a valid_command"
  prompt_user
  display_card_total(num)
end

def runner
 welcome
 card_total = initial_round
 until card_total > 21
 card_total = hit?(card_total)
  display_card_total(card_total)
 end
 end_game(card_total)
 
end  
