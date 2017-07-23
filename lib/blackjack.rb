
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  Random.rand(1..11)
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
  x = deal_card
  y = deal_card
  sum = x + y
  display_card_total(sum)
  return sum
end

def hit?(number)
  prompt_user
  answer = get_user_input
  if answer == "h"
    x = deal_card
    return number + x
  elsif answer == "s"
    return number
  else answer != "s" || "h"
    invalid_command
    prompt_user
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
  sum = initial_round #this line accomplishes the same goal as the above line. It calls initial round while simultaneously assigning it a variable
until sum > 21 do
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
