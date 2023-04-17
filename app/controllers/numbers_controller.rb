class NumbersController < ApplicationController
  
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers
    @unlucky_n = Array.new

    5.times do 
      obs = rand(1...100)
      @unlucky_n.push(obs)
    end

    render({ :template => "lottery_stuff/bad_luck.html.erb"})
  end

end
