def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 return rand(1...12)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
   card_total = deal_card
   card_total += deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 's'
  end
  elsif input == 'h'
    card_total += deal_card
  elsif input != 'h' && input != 's'
    invalid_command
  elsif card_total > 21
    end_game(card_total)
  end
  return card_total
end

def invalid_command
  "Please enter a valid command"
  hit?
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  until hit? > 21
    hit?
  end
end
