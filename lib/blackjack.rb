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
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
    card_total = deal_card + deal_card
      display_card_total(card_total)
  return card_total
end

def hit?(number)
  prompt_user
  x = get_user_input
    if x == 'h'
    deal_card + number
  elsif x == 's'
      number
    else
      invalid_command
    end
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
    hit?(total)
    display_card_total(total)
  end
  end_game
end
