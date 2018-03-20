def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random_card = rand(1..11)
  random_card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def invalid_command
    puts "Please enter a valid command"
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 's'
      card_total
  elsif input == 'h'
    sum = deal_card
    card_total += sum
  else
    invalid_command
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21
      sum = hit?(sum)
      display_card_total(sum)
  end
  end_game(sum)
end
    
