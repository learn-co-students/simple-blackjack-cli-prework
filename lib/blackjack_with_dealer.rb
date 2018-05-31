require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
  puts "The dealer will always stop if their total is higher than 16"
end


def deal_card
  rand(1..11)
end

def player_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def dealer_card_total(card_total)
  puts "The dealer's cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  gets.chomp
end

def player_initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  player_card_total(card_total)
  card_total
end


def dealer_initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  dealer_card_total(card_total)
  card_total
end


def player_hit?(card_total)
  keep_going = ""
  if card_total > 21
    keep_going = -1
  else
    prompt_user
    answer = get_user_input
    if answer == "s"
      keep_going = -1
    elsif answer == "h"
      card_total += deal_card
      keep_going = player_card_total(card_total)
    else
      invalid_command
      player_hit?(card_total)
    end
  end
  keep_going
end


def dealer_hit?(card_total)
  if card_total >= 17
    dealer_stands(card_total)
  else
    card_total += deal_card
    dealer_card_total(card_total)
  end
end


def dealer_stands(card_total)
  puts "The dealer stands with a total of #{card_total}"
end


def dealer_stops?(card_total)
  card_total >= 17
end


def invalid_command
  puts "Please enter a valid command."
end


def game_end(player_total, dealer_total)
  if (player_total <= 21 && player_total > dealer_total) || (player_total < 21 && dealer_total > 21)
    puts "Congratulations! You won the game!"
  elsif (player_total < 21 && player_total == dealer_total) || (player_total > 21 && dealer_total > 21)
    puts "Push"
  else
    puts "The dealer wins the game"
  end
end

def runner
  welcome
  player_total = player_initial_round
  dealer_total = dealer_initial_round
  until player_hit?(player_total) == -1
    player_total = player_hit?(player_total)
  end
  until dealer_stops?(dealer_total)
    dealer_total = dealer_hit?(dealer_total)
    sleep(1)
  end
  dealer_stands(dealer_total)
  game_end(player_total, dealer_total)
end
