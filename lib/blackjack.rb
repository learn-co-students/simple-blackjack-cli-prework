card_total = 0
#flip = 0

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  flip = rand(1..11)
  return flip
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  input
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card

  card_total = card1 + card2
  display_card_total(card_total)
  return card_total

end

def hit?(card_total)
  prompt_user
  input = get_user_input()
  input

  if input == 's'
    return card_total
  elsif input == 'h'
    card_total = card_total + deal_card()
  else
    invalid_command()
    prompt_user()
  end
  card_total
end

def invalid_command
  invald = "Please enter a valid command"
  invalid
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
