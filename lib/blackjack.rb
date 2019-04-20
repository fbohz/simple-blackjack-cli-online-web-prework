def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp 
end

def end_game(card_total)
  # code #end_game here
   puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  num1 = deal_card
  num2 = deal_card
  sum = num1 + num2
  display_card_total(sum)
  sum
end

def hit?(currentTotal)
  # code hit? here
  
  prompt_user
  player = get_user_input
  
  if player == "h"
    currentTotal += deal_card
    currentTotal
  elsif player == "s" 
    currentTotal
  else 
    invalid_command
 
  end
end
  

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  total = initial_round #tricky too 
  until total > 21
  total = hit?(total) #tricky part  
  display_card_total(total)
  
  end
end_game(total)
end 
    
