def welcome
  
  puts "Welcome to the Blackjack Table"
  
end

def deal_card
  
  rand(1..11) 
  
end

def display_card_total(cards_total)

  puts "Your cards add up to #{cards_total}"

end

def prompt_user
  
   puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  
   gets.chomp.strip

end

def end_game(cards_total)
  
    puts "Sorry, you hit #{cards_total}. Thanks for playing!"
  
end

def initial_round
  
    hand = deal_card + deal_card
    
    display_card_total(hand)
    return hand
    
end

def hit?(cards_total)
  
  prompt_user
  answer = get_user_input
  
  if (answer != 'h' && answer != 's')
    invalid_command
    prompt_user
    answer = get_user_input
  end
  
  if answer == 'h'
    return cards_total += deal_card
  end
  
  return cards_total
  
end

def invalid_command
  puts "Please enter a valid command." 
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
  welcome
  cards_total = initial_round
  
  until cards_total > 21
    cards_total = hit?(cards_total)
    display_card_total(cards_total)
  end
  
  end_game(cards_total)

end
    
