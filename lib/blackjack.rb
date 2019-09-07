def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1 + rand(11)
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

def end_game(card_total)
  if card_total > 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  first = deal_card
  second = deal_card
  card_total = first + second
  display_card_total(card_total)
  return card_total
end

def hit?(number)
  prompt_user
  move = get_user_input
  if move == "h"
    card_total = deal_card + number
    return card_total
  elsif move == "s"
    return number
  else
    invalid_command
    prompt_user
  end
end


def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  card_total = initial_round
  until card_total > 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
