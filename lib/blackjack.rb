def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_choice = gets.chomp
  return user_choice
end

def end_game(number)
  if number > 21
    puts "Sorry, you hit #{number}. Thanks for playing!"
  end
end

def initial_round
  hand = deal_card + deal_card
  display_card_total(hand)
  return hand
end

def hit?(hand)
  prompt_user
  choice = get_user_input
  case choice
    when "h"
      hand += deal_card
    when "s"
      return hand
    else
      invalid_command
    end
end

def invalid_command
  puts "That's an invalid command!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  game = initial_round
  until game > 21 do
    game = hit?(game)
    display_card_total(game)
  end
end_game(game)
end
    
