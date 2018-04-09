def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to " + card_total.to_s
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(sum)
  puts "Sorry, you hit " + sum.to_s + ". Thanks for playing!"
end

def initial_round
  sum = 0
  2.times do
    sum += deal_card
  end
  display_card_total(sum)
  sum
end

def hit?(sum)
  prompt_user
  input = get_user_input
  if input == 's'
  elsif input == 'h'
    sum += deal_card
  end
  sum
end

def invalid_command
end

def runner
  welcome
  sum = initial_round
  while sum < 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
