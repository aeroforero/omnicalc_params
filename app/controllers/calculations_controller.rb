class CalculationsController < ApplicationController
  def flex_square
    @user_number = params["num"].to_f
    @square = @user_number **2
    render("calculations/flex_square.html.erb")
  end
  def square_form
    render("calculations/square_form.html.erb")
  end
  def square
    @user_number = params[:user_number].to_f
    @square = @user_number ** 2
    render("calculations/square.html.erb")
  end



  def flex_square_root
    @user_number = params["num"].to_f
    @square_root = @user_number ** 0.5
    render("calculations/flex_square_root.html.erb")
  end

  def flex_payment
    @user_int = params["int"].to_f
    monthly_rate = @user_int / 10000 / 12
    @user_years = params["years"].to_f
    @user_principal = params["principal"].to_f

    @payment = (monthly_rate * @user_principal * ((1+monthly_rate)**(12 * @user_years))) / (((1+monthly_rate)**(12 * @user_years))-1)
  end




end
