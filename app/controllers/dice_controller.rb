class DiceController < ApplicationController

  def play
    
    @gambling = Array.new

    @first = params[:first_number].to_i
    @second = params[:second_number].to_i

    @first.times do 
      num = rand(1..@second)
      @gambling.push(num)
    end

    render({ :template => "gamble/result"})
  end

end
