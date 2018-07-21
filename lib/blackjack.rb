
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(10)+1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
   puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
   user_input = gets.chomp
   return user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first=deal_card
  second=deal_card
  puts "Your cards add up to #{first+second}"
  return first+second
end

def hit?(card_total)
  prompt_user
  new=get_user_input
  if new == "h"
    moo = deal_card
    return card_total = card_total + moo
  elsif new == "s"
    return card_total
  else
    invalid_command
  end
end


def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  sum = initial_round
  until sum > 21
    summ = hit?(sum)
    sum=summ
    display_card_total(summ)
  end
  end_game(sum)
end
