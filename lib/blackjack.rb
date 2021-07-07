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
  user_in = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  hand = deal_card
  hand += deal_card
  hand == 22 ? hand = 11 : hand = hand
  display_card_total(hand)
  return hand
end

def hit?(card_total)
  prompt_user
  choice = get_user_input
  if choice == 's'
    return card_total
  elsif choice == 'h'
    return card_total += deal_card
  end

end

def invalid_command
  puts "Try again!"
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  new_hand = hand
  loop do
    new_hand = hit?(hand)
    display_card_total(new_hand)
    break if new_hand == hand
    hand = new_hand
    break if new_hand > 21
  end
  end_game(hand)

end
