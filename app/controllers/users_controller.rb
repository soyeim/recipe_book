class UsersController < ApplicationController
  def index
    @list_of_users = User.all.order(email: :asc)
    render({ :template => "users/index" })
  end

  def show
    @email = params.fetch("email")
    @the_user = User.where(email: @email).first

    if @the_user == nil
      redirect_to("/404")
    else
      render({ :template => "users/show" })
    end
  end
end
