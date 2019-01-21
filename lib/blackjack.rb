def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = (rand 11) + 1

end


def display_card_total(card_total)
  # code #display_card_total here
  t = card_total
  puts "Your cards add up to #{t}"
end


def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
   gets.chomp
end

def end_game(n)
  # code #end_game here
  if n>21
  puts "Sorry, you hit #{n}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
    x = deal_card
    y = deal_card

    card_total = x+y
    #display_card_total(card_total)

    display_card_total(card_total)
    return card_total
  end


def hit?(current_total)
  # code hit? here
  prompt_user
  c = get_user_input

  if(! ((c=="h")||(c=="s")))
    invalid_command
  elsif c=="h"
    n = deal_card
    card_total= current_total + n
  elsif c=="s"
    card_total = current_total
  end
  return card_total
end

def invalid_command
  # code invalid_command here
  puts  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  ct = initial_round
  final_total = hit?(ct)
  display_card_total(final_total)
  end_game(final_total)
end
