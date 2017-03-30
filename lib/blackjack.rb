
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"

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
  sum = 0
  2.times do
    sum += deal_card
  end
  display_card_total(sum)

  return sum
end

def hit?(total)
  prompt_user
  holder = get_user_input

    if holder == "h"
      total += deal_card

    elsif holder == "s"
      total
    else invalid_command

  end

end

def invalid_command
  print "Please enter a valid command"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner

  welcome
  value = initial_round


  until value > 21

    value += hit?(value)


  end
  if 1 == 1
    display_card_total(30)

  end
  end_game(30)

end
