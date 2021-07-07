require_relative "blackjack.rb"

#runner
def runner
  # code runner here
  welcome
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end
  end_game(card_total)
