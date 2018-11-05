def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  [*1..11].sample
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
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
  first_hand = deal_card + deal_card
  display_card_total(first_hand)
  first_hand
end

def hit?(current_total)
    prompt_user
    choice = get_user_input
      if choice == "h"
        new_hand = current_total + deal_card
      elsif choice == "s"
        current_total
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
  hand = initial_round
  until hand >= 21
    hand = hit?(hand)
    display_card_total(hand)
    end
  end_game(hand)
end
