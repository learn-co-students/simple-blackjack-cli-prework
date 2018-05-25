def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  range = 1..11
  num = rand(range)
  num
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
  if total > 21
   puts "Sorry, you hit #{total}. Thanks for playing!"
  else
    return nil
end
end

def initial_round
  display_card_total(deal_card + deal_card)
  deal_card + deal_card

end

def hit?(total)
  prompt_user
  answer = invalid_command(get_user_input)
  if answer == "h"
    total += deal_card
  else
    total
  end
end

def invalid_command(input)
  if input != "s" && input != "h"
    puts "Please enter valid command"
    prompt_user
  else
    input
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
