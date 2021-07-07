def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
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

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  total = 0
  2.times do
    total += deal_card
  end
  display_card_total(total)
  return total
end

def hit?(num)
  prompt_user
  key = get_user_input
  if key == 's'
    !deal_card
  elsif key == 'h'
    num += deal_card
  else
    invalid_command
  end
  return num
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome #Welcome the user
  total = initial_round #Set var `total` as `initial_round` result to start
  while total < 21 #while the total is less than 21...
    total = hit?(total) #`hit?` prompts player with "hit or stand?" If player hits, `hit?` takes `total` as the perameter and adds to the `total` with new `hit?` result
    display_card_total(total) #`display_card_total` shows new card total if it's less than 21 and 'hit?' fires again with prompt
  end
  end_game(total) #If new card total is > 21, `end_game` fires displying message with `total`
end
