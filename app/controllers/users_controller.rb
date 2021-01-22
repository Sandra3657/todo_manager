class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    render "users/new"
  end

  # def index
  #   render plain: User.all.map { |user| user.to_pleasant_string }.join("\n")
  # end

  def create
    User.create!(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
    )

    redirect_to "/"
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
