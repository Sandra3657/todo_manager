class UsersController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def new
    render "users/new"
  end

  # def index
  #   render plain: User.all.map { |user| user.to_pleasant_string }.join("\n")
  # end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
    )

    if user.save
      session[:current_user_id] = user.id
      redirect_to "/"
    else
      flash[:error] = user.errors.full_messages.join(", ")
      redirect_to new_user_path
    end
  end

  #   response_text = "Created new USER, Name:- #{name}, Email:- #{email}"
  #   render plain: response_text
  # end

  # def login
  #   email = params[:email]
  #   password = params[:password]
  #   user = User.where("email = ? AND password = ?", email, password)

  #   response_text = user.empty? ? "false" : "true"
  #   render plain: response_text
  # end
end
