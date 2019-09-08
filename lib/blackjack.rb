def welcome
puts "Welcome to the Blackjack Table"
end


def deal_card
return rand(1...11)
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
puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
num = 0
2.times do
  num = deal_card + num
end
display_card_total(num)
return num
end

def hit?(num)
prompt_user
x = get_user_input
case x
when "h"
num = num + deal_card
return num
when "s"
return num
else invalid_command
  return hit?(num)
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
x = initial_round
while x <= 21
x = hit?(x)
display_card_total(x)
end
end_game(x)
end
