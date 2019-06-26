def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
    card = rand(1..11) # generates a random card number between 1 and 11
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
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
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total) # changed card_total to total
end

def hit?(card_total)
  prompt_user
  # deleted get_user_input. I only need input = get_user_input to receieve the users input
  input = get_user_input
    if input == "h"
      card_total += deal_card
    elsif input == "s"
        card_total
        #display the card total when the user decides to stay
    else
        invalid_command
    end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total < 21
      card_total = hit?(card_total)
      card_total = display_card_total(card_total)
    end
  end_game(card_total)
end
    
