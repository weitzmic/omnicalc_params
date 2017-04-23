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

    @square_root = (Math.sqrt(@user_num)).round(3)

    render("calculations/square_root.html.erb")
  end

  def flexible_payment
    # Parameters: {"number"=>"8"}

    @apr = params["rate"].to_f / 100
    @years = params["years"].to_i
    @principal = params["principal"].to_f

    monthly_rate = @apr / 100 / 12
    nper = @years * 12

    @monthly_payment = ((monthly_rate * @principal) / (1- (1+ monthly_rate)**-nper)).round(2).to_f



    render("calculations/flexible_payment.html.erb")
  end

  def flexible_random
    # Parameters: {"number"=>"8"}

    @min = params["min"].to_f
    @max = params["max"].to_i

    @random_number = (rand(@min..@max)).round(0)

    render("calculations/flexible_random.html.erb")
  end


  def square_form


    render("calculations/square_form.html.erb")

  end

  def square
    @user_num = params[:user_num].to_f

    render("calculations/square.html.erb")

  end

  def square_root_form

    render("calculations/square_root_form.html.erb")

  end

  def square_root_results
    @user_num = params[:user_num].to_f
    @square_root = (Math.sqrt(@user_num)).round(3)

    render("calculations/square_root_results.html.erb")

  end

  def payment_form

    render("calculations/payment_form.html.erb")

  end

  def payment_results

    @apr = params["rate"].to_f / 100
    @years = params["years"].to_i
    @principal = params["principal"].to_f

    monthly_rate = @apr / 100 / 12
    nper = @years * 12

    @monthly_payment = ((monthly_rate * @principal) / (1- (1+ monthly_rate)**-nper)).round(2).to_f


    render("calculations/payment_results.html.erb")

  end


end
