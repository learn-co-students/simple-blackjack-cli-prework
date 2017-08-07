require_relative "blackjack.rb"
def runner
  # code runner here
  welcome
  start = initial_round
  counter = start
  until counter>21
    counter += hit?
  end
end
runner
