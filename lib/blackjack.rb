def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
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

def new_end_game(card_total, dealer_card_total)
  until dealer_card_total > 16
    puts "dealer card total is #{dealer_card_total}"
    dealer_card_total = new_hit(dealer_card_total)
  end
  if card_total > 21
    puts "You busted!"
    puts "Dealer ended up with #{dealer_card_total}"
  else
    if dealer_card_total > 21
      puts "Dealer busted!"
      puts "You ended up with #{card_total}"
      puts "You win!"
    else
      if card_total > dealer_card_total
        puts "You ended up with #{card_total}"
        puts "Dealer ended up with #{dealer_card_total}"
        puts "You win!"
      elsif card_total == dealer_card_total
        puts "You both ended up with #{card_total}"
        puts "It's a push!"
      elsif card_total < dealer_card_total
        puts "You ended up with #{card_total}"
        puts "Dealer ended up with #{dealer_card_total}"
        puts "You lose."
        puts "Better luck next time!"
      end
    end
  end
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def dealer_initial_round
  dealer_cards = []
  dealer_total = deal_card
  dealer_show_card = dealer_total
  dealer_total += deal_card
  dealer_cards << dealer_total
  dealer_cards << dealer_show_card
  dealer_cards
end

def hit_or_stay
  prompt_user
  input = get_user_input
  input
end

def new_hit(card_total)
  card_total += deal_card
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
  elsif input == "s"
    stay?(input)
  else
    invalid_command
  end
  card_total
end


def stay?
  puts "You are staying put then..."
  true
end

def invalid_command
  # code invalid_command here
  puts "invalid entry please try again"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  stay = false
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end

def new_runner
  welcome
  card_total = initial_round
  dealer_cards = dealer_initial_round
  dealer_card_total = dealer_cards[0]
  dealer_show_card = dealer_cards[1]
  stay = false
  until card_total > 21 || stay
    puts "The dealer is showing #{dealer_show_card}"
    input = hit_or_stay
    if input == "h"
      card_total = new_hit(card_total)
    elsif input == "s"
      stay = stay?
    else
      invalid_command
    end
    display_card_total(card_total)
  end
  new_end_game(card_total, dealer_card_total)
end
