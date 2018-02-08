def welcome
  # code #welcome here
  puts ("Welcome to the Blackjack Table")
end

def deal_card
  # code #deal_card here
  card = 1 + rand(10)
end

def display_card_total (sum)

  puts ("Your cards add up to #{sum}")

  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts ("Type 'h' to hit or 's' to stay")
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
  return input
end

def end_game (total)
  # code #end_game here
  puts("Sorry, you hit #{total}. Thanks for playing!")
end

def initial_round
  # code #initial_round here
  sum = 0
  sum += deal_card
  sum += deal_card
  display_card_total(sum)
  sum


end

def hit?(sum)
  # code hit? here

  prompt_user
  input = get_user_input
  if input == 'h'
    sum += deal_card
  end

  sum


end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round #sum is 20
  sum = hit?(sum)
  display_card_total(sum)
  if sum > 21
    end_game(sum)
  end

end
