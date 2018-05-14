def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(sum)
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  return sum
end

def hit?(sum)
  prompt_user
  input = get_user_input
    if input == "s"
      sum
    elsif input == "h"
      sum += deal_card
      sum
    else 
      invalid_command
    end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end  
  end_game(sum)
end
    
