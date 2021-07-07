def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
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
  card1 = deal_card
  card2 = deal_card
  cardSum = card1 + card2
  display_card_total(cardSum)
  cardSum
end

def hit?(tot)
  total = tot
  prompt_user
  input = get_user_input
  if input == 's'
    # Do nothing
  elsif input == 'h'
    card = deal_card
    total += card 
  else 
    invalid_command
  end 
  total
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
  total = initial_round
    until total > 21 
      total = hit?(total)
      display_card_total(total)
    end 
    end_game(total) 
end
    
