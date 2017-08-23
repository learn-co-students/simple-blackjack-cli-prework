def welcome()

    puts 'Welcome to the Blackjack Table'

end


def deal_card()

    return randCard = rand(1..11)

end


def display_card_total(cardTotal)

    puts "Your cards add up to #{cardTotal}"

end


def prompt_user()

    puts "Type 'h' to hit or 's' to stay"

end


def get_user_input()

    return gets.chomp

end


def end_game(cardTotal)

    puts "Sorry, you hit #{cardTotal}. Thanks for playing!"

end


def initial_round()

    initTotal = deal_card + deal_card
    display_card_total(initTotal)
    return initTotal

end


def hit?(initTotal)

    prompt_user
    userInput = get_user_input()
    #--
    #===============
    case (userInput)

    when 'h'

        initTotal + deal_card()


    when 's'

        return initTotal

    else

        invalid_command()

    end
    #===============
end

def invalid_command()

    puts 'Please enter a valid command'

end

#========================[RUNNER]================================

def runner()

    welcome()
    current = initial_round
    #--

    until current > 21
        current = hit?(current)
        display_card_total(current)
    end
    end_game(current)
end
