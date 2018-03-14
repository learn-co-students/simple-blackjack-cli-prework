def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
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
  sum1 = deal_card
  sum2 = deal_card
  final_sum = sum1 + sum2
  display_card_total(final_sum)
  return final_sum
end

def hit?(number)
  prompt_user
  hit_me = get_user_input
  if hit_me == "h"
    my_card = deal_card
    my_total = my_card + number
    display_card_total(my_total)
    return my_total
  elsif hit_me == "s"
    return number
  else
    invalid_command
    return number
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
  initial_card = initial_round
  total = hit?(initial_card)
  while total < 21
    total = total + hit?(total)
  end
  if total > 21
    end_game(total)
  end
end
