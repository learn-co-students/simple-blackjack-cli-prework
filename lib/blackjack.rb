def welcome
    puts "Welcome to the Blackjack Table"
end

def deal_card
    1 + rand(11)
end

def display_card_total(total)
    puts "Your cards add up to #{total}"
end

def prompt_user
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    gets.chomp

end

def end_game(num)
    puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
    cardSum = deal_card + deal_card
    display_card_total(cardSum)
    cardSum
end

def hit?(total)
    newTotal = total
    prompt_user
    x = get_user_input
    if x == 's'
        total
    elsif x == 'h'
        newTotal += deal_card
        display_card_total(newTotal)
        newTotal
    else
        puts invalid_command
        prompt_user
        total
    end
end

def invalid_command
    "Please enter a valid command"
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    x = initial_round
    y = hit?(x)
    end_game(y)
end
