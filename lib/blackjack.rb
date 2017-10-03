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

def end_game(total)
    puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
    your_hand = 0
    2.times do
        your_hand = your_hand + deal_card
    end
    display_card_total(your_hand)
    return your_hand
end

def invalid_command
    puts "Please enter a valid command"
end

def hit?(card_total)
    prompt_user
    case get_user_input
        when "s"
          return card_total
        when "h"
          card_total = card_total + deal_card
          return card_total
        when !("h" || "s")
          invalid_command
    end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    your_cards = initial_round
    until your_cards > 21
        your_cards = hit?(your_cards)
        display_card_total(your_cards)
    end
    end_game(your_cards) if your_cards > 21
end
