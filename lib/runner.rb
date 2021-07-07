require_relative "blackjack.rb"

def runner(card_total)

  welcome
  initial_round
  hit?(card_total)

until card_total == 21
    card_total = hit?(card_total)
    display_card_total(card_total)
end

end_game
end
