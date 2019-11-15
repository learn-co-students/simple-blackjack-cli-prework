
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  # card_total=1..21
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


def initial_round(deal_card)
 card_total=[ ]
 prompt_user
 if get_user_input=="d"
 2.times do deal_card
 end
 else 
   puts "No deal"
 end
print #{display_card_total}
end
# describe "#initial_round" do

#   it "calls on #deal_card twice and returns the sum" do
#     expect(self).to receive(:deal_card).at_least(:twice).and_return(6)
#     expect(initial_round).to eq(12)
#   end

#   it "calls on the '#display_card_total' to print sum of cards" do
#     expect(self).to receive(:deal_card).at_least(:twice).and_return(6)
#     expect($stdout).to receive(:puts).with(/Your cards add up to /)
#     initial_round
#   end

# end
def hit?(card_total)
  # code hit? here

 
end

 def invalid_command
#   # code invalid_command here
puts "Invalid command."
 end

# #####################################################
# # get every test to pass before coding runner below #
# #####################################################

# def runner
#   # code runner here
# end
    
