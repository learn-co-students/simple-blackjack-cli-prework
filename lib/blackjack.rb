def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1 + rand(11)
  return card
end

def display_card_total(arg)
  puts "Your cards add up to #{arg}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(tot)
  puts "Sorry, you hit #{tot}. Thanks for playing!"
end

def initial_round
 card1 = deal_card
 card2 = deal_card
 total = card1 + card2
 display_card_total(total)
 return total
end

def hit?(arg)

    prompt_user
    x = get_user_input

    if x == 'h'
      arg += deal_card
    elsif x != 's'
      invalid_command
    end

  return arg
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  tot = 0
  welcome
  tot = initial_round

  until tot>21
    tot = hit?(tot)
    display_card_total(tot)
  end

  end_game(tot)
end
