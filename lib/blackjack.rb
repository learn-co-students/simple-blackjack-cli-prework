def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand((1..11))
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

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
end

def hit?(amount)
  prompt_user
  reply = get_user_input

  case reply
  when "h"
    return amount + deal_card
  when "s"
    return amount
  else
    invalid_command
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
  card_total = initial_round
  until card_total > 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
    end
  end_game(card_total)

end
