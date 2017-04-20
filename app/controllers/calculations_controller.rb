class CalculationsController < ApplicationController

  def flexible_square_5
    # Parameters: {"number"=>"8"}
    @user_num = params["number"].to_f
    # .to_f - converting to a float - string class to number class

    @square = @user_num **2

    render("calculations/flexible_square_5.html.erb")
  end

  def square_root
    # Parameters: {"number"=>"8"}
    @user_num = params["number"].to_f
    # .to_f - converting to a float - string class to number class

    @square_root = Math.sqrt(@user_num)

    render("calculations/square_root.html.erb")
  end

  def flexible_payment
    # Parameters: {"number"=>"8"}
    @user_num = params["number"].to_f
    # .to_f - converting to a float - string class to number class

    @square_root = Math.sqrt(@user_num)

    render("calculations/flexible_payment.html.erb")
  end

  def square_form


    render("calculations/square_form.html.erb")

  end

  def square
    @user_num = params[:user_num].to_f 

    render("calculations/square.html.erb")

  end

end
