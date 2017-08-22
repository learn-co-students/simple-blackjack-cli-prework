#Any reason why some type of 'current_card_sum' variable wasn't used?

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11) + 1
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

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  card1 + card2
end

def hit?(current_total)
  prompt_user
  hit_or_stay = get_user_input
    if hit_or_stay == 'h'
      current_total + deal_card
    elsif hit_or_stay == 's'
      current_total
    else
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
  current_total = initial_round
    until current_total > 21 do
      current_total = hit?(current_total)
      display_card_total(current_total)
    end
  end_game(current_total)
end
