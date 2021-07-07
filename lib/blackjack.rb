def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
  return num
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  prompt_user
  input = gets.chomp
  input
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  exit
end

def initial_round
  cards = 0
  2.times do 
    cards += deal_card
  end
  display_card_total(cards)
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == 'h'
    total += deal_card
    display_card_total(total)
  end 
  total
end

def invalid_command
  puts 'Sorry what you entered is invalid. Please try again.'
  get_user_input
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


