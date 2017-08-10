def welcome
    puts 'Welcome to the Blackjack Table'
end

def deal_card
    1 + rand(11)

end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  action = gets.chomp
end

def end_game(display_card_total)
  puts "Sorry, you hit #{display_card_total}. Thanks for playing!"
end

def initial_round
  cardOne = deal_card
  cardTwo = deal_card
  cardSum = cardOne + cardTwo
  display_card_total(cardSum)
  cardSum
end

def hit?(initial_round)
    prompt_user
    action = get_user_input
    if action == "s"
        initial_round
    elsif action == "h"
        newCard = deal_card
        initial_round += newCard

    end
end

def invalid_command

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    initial_round
    while initial_round < 21
        hit?(initial_round)
        display_card_total(initial_round)
    end
    end_game
end
