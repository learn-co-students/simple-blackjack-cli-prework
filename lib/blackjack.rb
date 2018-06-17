def welcome
  #welcome method will welcome user
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
  # reutrns random number from range 1-11
end

def display_card_total(total_amount)
#this method takes the arguement of the total and displays it
  puts "Your cards add up to #{total_amount}"

end

def prompt_user

  puts "Type 'h' to hit or 's' to stay"
  #this will present the user this statement when entered
end

def get_user_input
  answer = gets.chomp
  #this will allow the user to input something and saves what the user gives
end

def end_game(card_total)

  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # this method would put out the statement above
end

def initial_round()
  #this method takes any amount of arguements
  total = deal_card + deal_card
  # total now equals a card being dealt twice aka two random numbers
  display_card_total(total)
  #our display_card_total method takes the total of the two cards dealt as an arguemnt
  return total
  # it will now return the total of the two cards dealt
end

def hit?(number)
  # hit method will take a number as a arguement
prompt_user
# will call on the prompt_user method to present a question
answer = get_user_input
# the answer will take the get_user_input method to get the users input
if answer == "h"
  # if statement for if the user puts h
  number = number +deal_card
  # will take the current number and add another card by calling this method
return number
# will return the number

elsif answer == "s"
  # if the user puts in s then just return the number
  return number

else
  #if user puts anything other than s or h will get the invalid command
  invalid_command
  prompt_user
  #if the get invalid command then we will call on prompt_user method to once again input something

end
number
end


def invalid_command


puts "Please enter a valid command"

#if method invalid_command method is called then this string will appear

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  #when runner method is called it will run the entire code
welcome
# calls on welcome method
total_number = initial_round
# now calls on initial_round method and makes it equal to total_number
until total_number >= 21
  # will run until our display_card_total is equal or over 21
  total_number = hit?(total_number)
  #total number will call on the hit method and ask if user wants to stay or hit

  display_card_total(total_number)
  # will call on the display_card_total and take the total of the cards as arguement 

end
end_game(total_number)
# calls on the end game method
end
