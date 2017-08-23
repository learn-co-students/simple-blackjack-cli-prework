def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
    card = rand(1..11)# code #deal_card here
end

def display_card_total(total)
    total = total.to_i
    puts "Your cards add up to #{total}"# code #display_card_total here
end

def prompt_user
    puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
    gets.chomp# code #get_user_input here
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!" # code #end_game here
end

def initial_round
    total = deal_card + deal_card
    display_card_total(total)
    return total
end

def hit?(total)
    prompt_user
    input = get_user_input
    if input == "h"
        total += deal_card
    elsif input == "s"
        sleep 1
    else
        invalid_command
        hit?(total)
    end
    return total
end

def invalid_command
  puts "Please enter a valid commend"
  prompt_user      # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    hand = initial_round # code runner here
    until hand > 21
      hand = hit?(hand)
      display_card_total(hand)
    end
  end_game(hand)
end
    
