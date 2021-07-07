def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand (1..11)
end

def display_card_total(h)
  # code #display_card_total h
  puts "You're cards add up to #{h}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  method= gets.chomp
end

def end_game
  # code #end_game here
   if n>21
    puts "Sorry, you hit #{n}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
    sum= deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?
  # code hit? here
  prompt_user
  input= get_user_input
  if input == "h"
    current_total+= deal_card
  elsif input == "s"
    puts current_total
  end
end


def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here	  welcome
  hand=initial_round
  until hand>21 do
    hand=hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
  
  describe "#runner" do

  before(:each) do
    def get_user_input
      "h"
      describe "#runner" do

  before(:each) do
    def get_user_input
      "h"
    end
  end

  it "calls on the #welcome method,
  then on the #initial_round method,
  then calls #hit? and #display_card_total methods
  -until- the card sum is greater than 21,
  then calls on the #end_game method" do

    expect(self).to receive(:deal_card).at_least(3).times.and_return(10)
    expect(self).to receive(:get_user_input).and_return("h")

    expect($stdout).to receive(:puts).with("Welcome to the Blackjack Table")
    expect($stdout).to receive(:puts).with("Your cards add up to 20")
    expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
    expect($stdout).to receive(:puts).with("Your cards add up to 30")
    expect($stdout).to receive(:puts).with("Sorry, you hit 30. Thanks for playing!")
    runner
  end
end
    end
  end

  