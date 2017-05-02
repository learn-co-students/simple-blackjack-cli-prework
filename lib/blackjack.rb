def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(score)
  puts "Sorry, you hit #{score}. Thanks for playing!"
end

def initial_round

  sum = 0

  2.times do
    deal_card
    sum += deal_card
  end

  display_card_total(sum)

end

def hit?(card_total)

  prompt_user

  case get_user_input

  when "h"
    card_total += deal_card
  when "s"
    card_total
  else
    invalid_command
  end

end

def invalid_command
  puts "Invalid"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

  welcome
  card_total = initial_round

  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end

  end_game(card_total)

end
