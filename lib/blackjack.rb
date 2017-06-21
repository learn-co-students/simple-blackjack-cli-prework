def welcome
    puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  count = 0
  2.times do |i|
    count += deal_card
  end

  display_card_total(count)
  count
end

def hit?(n)
  prompt_user
  answer = get_user_input

  card_total = n

  if answer == 'h'
    card_total += deal_card
  elsif answer == 's'
    card_total
  else
    invalid_command
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
  total = initial_round

  until total > 21
    prompt_user
    answer = get_user_input
      if answer == 'h'
        total += deal_card
        display_card_total(total)
      elsif answer == 's'
       total
      else
       invalid_command
      end
  end

  end_game(total)
end
