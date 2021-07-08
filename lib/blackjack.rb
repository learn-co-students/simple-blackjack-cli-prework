def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11).to_i
  return card
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  return card_total
end


def hit?(initial_hand) # intial_hand is the intial_round output.

  prompt_user
  user_input = get_user_input

  if user_input == "h"
    next_card = deal_card
    current_card_total = initial_hand + next_card
    return current_card_total

  elsif user_input == "s"
    current_card_total = initial_hand
    return current_card_total
  else
    invalid_command

    loop do
      prompt_user
      user_input = get_user_input
      if user_input == "h"
        new_card = deal_card
        current_card_total = initial_hand + new_card
        return current_card_total

      elsif user_input == "s"
        current_card_total = initial_hand
        return current_card_total
      else
        invalid_command
      end
    end

  end

end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  #initial_round
  cards_in_hand = initial_round

  counter = 0
  until counter >21
    #hit?(cards_in_hand)
    counter = hit?(cards_in_hand)
    display_card_total(counter)
  end

  end_game(counter)

end
