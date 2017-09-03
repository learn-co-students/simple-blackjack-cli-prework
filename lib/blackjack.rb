def welcome
  # code #welcome here
	puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
	rand(11) + 1
end

def display_card_total(card_total)
  # code #display_card_total here
	puts "Your cards add up to #{card_total}"	
end

def prompt_user
  # code #prompt_user here
	puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
	user_input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
	puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
	total  = deal_card + deal_card
	display_card_total(total)
	total
end

def hit?(current_total)
  # code hit? here
	prompt_user
	input = get_user_input
	if input == "s"
		current_total
	elsif input == "h"
		current_total + deal_card
	else 
		invalid_command
		current_total
	end
end

def invalid_command
  # code invalid_command here
	puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
	user_total = 0
	welcome
	user_total = initial_round
	until user_total > 21 do
		user_total = hit?(user_total)
		display_card_total(user_total)
	end
	end_game(user_total)

end
