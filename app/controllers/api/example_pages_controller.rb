class Api::ExamplePagesController < ApplicationController

  def random_fortune_action
    fortunes = [
                "A beautiful, smart, and loving person will be coming into your life.",
                "A dubious friend may be an enemy in camouflage.",
                "A faithful friend is a strong defense.",
                "A fresh start will put you on your way.",
                "A friend asks only for your time not your money."
              ]
    # @random_fortune = fortunes[rand(fortunes.length - 1)]
    @random_fortune = fortunes.sample

    render "random_fortune_view.json.jbuilder"
  end

  def lotto_action
    possible_numbers = (1..60).to_a.shuffle
    picked_numbers = []
    
    6.times do 
      picked_numbers << possible_numbers.pop 
    end
    @lotto_numbers = picked_numbers.join(", ")
   
    render "lotto_view.json.jbuilder"
  end

  # def beer_action

  #   def 100_bottles_beer
  #     count = 99
  #     no_more = "no more" # for accuracy's sake I wanted a 'No' and 'no'
  #     No_more = "No more"
  #     number_of_rounds = 1 # wrote the code in a way that you can set the # of rounds you want to print lyrics for

  #     number_of_rounds*100.times do
  #       if count > 1
  #           puts "#{count} bottles of beer on the wall, #{count} bottles of beer."
  #           count = count - 1
  #           puts "Take one down and pass it around, #{count} bottles of beer on the wall."
  #           puts ""
  #       elsif count == 1
  #           puts "#{count} bottle of beer on the wall, #{count} bottle of beer."
  #           count = count - 1
  #           puts "Take one down and pass it around, #{no_more} bottles of beer on the wall."
  #           puts ""
  #       else 
  #           puts "#{No_more} bottles of beer on the wall, #{no_more} bottles of beer." 
  #           count = 99  
  #           puts "Take one down and pass it around, #{count} bottles of beer on the wall."
  #           puts ""
  #       end
  #     end
  #   end


  #   render "beer_view.json.jbuilder" 
  # end




end
