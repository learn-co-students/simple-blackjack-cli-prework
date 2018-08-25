def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
rand(1..11)
end

def display_card_total(card_total)
puts "Your cards add up to #{card_total}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.chomp
end


def end_game(number)
puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
 sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(number)
 prompt_user
choice = get_user_input
if choice =='s' 
  return number
else if choice == 'h'
  sum = deal_card + number
  return sum
else 
  puts invalid_command
hit?(number)
end
end
end


def invalid_command
 puts "Please enter a valid command"
end

# def runner
# welcome
# card_total = initial_round
# hit?(card_total)
# get_user_input(card_total)
#   display_card_total(card_total)
# while (sum = deal_card + initial_round) > 21
# display_card_total(sum)
# end_game(sum)
# end
# end


def runner
welcome
  sum = initial_round
  until sum > 21 
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end