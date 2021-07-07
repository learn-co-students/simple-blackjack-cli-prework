def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
 end 
 
def get_user_input
  # code #get_user_input here
  input = gets.chomp 
  input 
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  num1 = deal_card
  num2 = deal_card
  sum = num1 + num2 
  display_card_total(sum)
  sum 
end

def hit?(num)
  # code hit? here
  prompt_user
  answer = get_user_input
  if invalid_command(answer)
    hit?(num)
  else 
    answer == "s" ? num : deal_card + num 
  end 
end

def invalid_command(input)
  # code invalid_command here
  unless input == "h" || input == "s"
    puts "Please enter a valid command"
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  points = initial_round
  until points > 21 
    points = hit?(points)
    display_card_total(points)
  end 
  end_game(points)
end
    
