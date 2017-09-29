def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  userInput = gets.chomp
  return userInput
end

def end_game(player_card_total)

  puts "Sorry, you hit #{player_card_total}. Thanks for playing!"

end

def initial_round

  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2

  display_card_total(sum)
  return sum

end

def hit?(currentTotal)

  prompt_user
  userInput = get_user_input

  if userInput == 's'

    return currentTotal

  elsif userInput == 'h'

    newCard = deal_card
    newTotal = newCard + currentTotal
    display_card_total(newTotal)
    return newTotal

  else
    prompt_user
  end
end

def invalid_command
  puts "Invalid command."
end

def runner
  theNumber = 0
  welcome
  hand = initial_round
  until theNumber == 21
    theNumber = hit?(hand)
  end

  end_game(theNumber)

end
