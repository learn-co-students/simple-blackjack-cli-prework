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
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1+card2)
  return card1+card2
end

def hit?(x)
    prompt_user
    input = get_user_input

    if input == 's'
      return x
    elsif input == 'h'
      x += deal_card
      return x
    elsif input != 's' && input != 'h'
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
  card_total = initial_round

  until card_total >= 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end

  end_game(card_total)
end
