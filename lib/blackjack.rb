def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = rand(1..11)
end

def display_card_total(card_total)
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

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(initial_round)
  prompt_user
  input = get_user_input
  if(input == 's')
    
     return initial_round
  elsif(input == 'h')
  
    return initial_round + deal_card
  else 
    prompt_user
  end
 
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  # code runner here
  welcome  
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end
  end_game(card_total)

end
    
def runner
  welcome
  initial_round
  until initial_round <21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
end
    end_game(initial_round)
end
    
