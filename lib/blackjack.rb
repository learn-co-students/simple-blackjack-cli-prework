def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card_total = rand(1..11)
  return card_total
end

def display_card_total(num)
puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  hand = deal_card + deal_card
  display_card_total(hand)
  hand

  end

  def invalid_command
    puts "Please enter a valid command"
  end

def hit?(hand)
  prompt_user
  input = get_user_input
    if input == "h"
      return hand += deal_card
    elsif input == "s"
      return hand
   else
     invalid_command
     prompt_user
     input = get_user_input
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  while hand < 21
    hand = hit?(hand)
    display_card_total(hand)
  end
end_game(hand)
end
