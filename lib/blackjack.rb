def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts("Type 'h' to hit or 's' to stay")
end

def get_user_input
 return gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round

  deal_card_one = deal_card
  deal_card_two = deal_card
  deal_card_total = deal_card_one + deal_card_two
  
  display_card_total(deal_card_total)
  return deal_card_total

 end 
 

def hit?(card_total)
prompt_user
get_user_input == "h" ? deal_card + card_total: card_total
end

def invalid_command
 end
 


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
 card_total = initial_round
  until card_total > 21
  card_total = hit?(card_total)
   display_card_total(card_total)
 end
 end_game(card_total)
end
    
