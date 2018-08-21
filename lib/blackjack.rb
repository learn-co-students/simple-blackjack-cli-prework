def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type \'h\' to hit or \'s\' to stay"
end

def get_user_input
  input = gets.chomp()
  return input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  num = deal_card + deal_card
  display_card_total(num)
  return num
end

def hit?(card_total)
  prompt_user
  case get_user_input
  when "s"
    return card_total
  when "h"
    return deal_card + card_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num1 = initial_round
  num2 = hit?(num1)
  display_card_total(num2)
  if num2 > 21
    end_game(num2)
  elsif
    num3 = hit?(num2)
    display_card_total(num3)
  elsif num3 > 21
    end_game(num3)
  elsif
    num4 = hit?(num3)
    display_card_total(num4)
  elsif num4 > 21
    end_game(num4)
  elsif
    num5 = hit?(num4)
    display_card_total(num5)
  elsif num5 > 21
    end_game(num5)
  elsif
    num6 = hit?(num5)
    display_card_total(num6)
  elsif num6 > 21
    end_game(num6)
  else
    num7 = hit?(num6)
    display_card_total(num7)
  end
end
