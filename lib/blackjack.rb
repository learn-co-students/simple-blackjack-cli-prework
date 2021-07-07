#random comments are for the submit bug
commonlearnsubmitmyshit = 1
def welcome
  puts "Welcome to the Blackjack Table"
end
#adsfasdf
def deal_card
  rand(1...11)
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
  puts "Sorry, your total was #{card_total} thanks for playing"
end

def initial_round
  initial_total = deal_card + deal_card
  display_card_total(initial_total)
  return initial_total
end

def hit?(card_total)
  input = get_user_input
  prompt_user
  if input == 'h'
    card = card_total
    card_total += card
  end
  card_total
end

def invalid_command
  input = get_user_input
  if input != 'h'
    puts "Invalid command"
end

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
#asdfasfasdf
# common learn submit my coadfsadfadsfadfsadsfadfsadfsadsfadsfde
