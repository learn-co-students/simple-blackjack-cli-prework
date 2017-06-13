def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  cards = [deal_card, deal_card]
  sum = cards.inject(0, :+)
  display_card_total(sum)
  sum
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == "h"
    return deal_card + number
  elsif input == "s"
    return number
  end
  invalid_command
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum >= 21 do
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end