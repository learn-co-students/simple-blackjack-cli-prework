def welcome
   puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
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
  deal_card
  deal_card
 sum = "#{deal_card}".to_i + "#{deal_card}".to_i
 card_total = sum
  display_card_total(card_total)
   return sum
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
   case answer
    when "s"
      card_total
    when "h"
      card_total += deal_card
    else
     invalid_command
    end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

def runner
  welcome
  initial_round
  card_total = initial_round
until card_total > 21
  hit?(card_total)
  display_card_total(card_total)
end
  end_game(card_total)
end



#   #card_total is undefined, when defined, receiving argument error
#   while card_total < 21
#   hit?
#   break if card_total > 21
