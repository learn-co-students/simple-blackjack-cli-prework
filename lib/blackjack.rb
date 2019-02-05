def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  answer = gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
    display_card_total(sum)
    sum
end

def hit?(sum)
  prompt_user
  if get_user_input == "s"
    sum
  else
    deal_card + sum
  end


end

def invalid_command

#####################################################
# get every test to pass before coding runner below #
#####################################################
end

def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
end_game(sum)
end


  # code runner here
