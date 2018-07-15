def welcome
  
  puts "Welcome to the Blackjack Table"
  
end

def deal_card
  
  card = Random.new(11)
  card.rand(1..11)
  dealt = card.rand(1..11) 
  
  return dealt
 
end

def display_card_total(cards_total)

  puts "Your cards add up to #{cards_total}"

end

def prompt_user
  
   puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  
   gets.chomp

end

def end_game(cards_total)
  
  if cards_total > 21
    puts "Sorry, you hit #{cards_total}. Thanks for playing!"
  end
  
end

def initial_round
  
    sum = 0 

    2.times do 
      sum =+ deal_card  
    end
    
    display_card_total(sum)
    return sum
    
end

def hit?(sum)
  
  cards_total = sum
  
  prompt_user
  answer = get_user_input
  
  return sum 
  
  if answer == "h"
    deal_card
  end
  
  if (answer != "h" || "s")
    invalid_command
  end
  
end

def invalid_command
  puts "Please enter a valid command". 
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
  cards_total = 0 
  
  welcome
  cards_total += initial_round
  move = hit?
    if move == "s"
      hit?
    end

end
    
