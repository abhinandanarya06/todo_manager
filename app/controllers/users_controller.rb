class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render plain: User.all.map { |user| user.formatted_string }.join("\n")
  end

  def create
    name = params[:name]
    email = params[:email]
    password = params[:password]
    new_user = User.create!(
      name: name,
      email: email,
      password: password,
    )
    render plain: "New User Account with id = #{new_user.id} is created !"
  end

  def login
    email = params[:email]
    password = params[:password]
    user = User.where("email = ? and password = ?", email, password)
    render plain: "#{not user.to_a.empty?}"
  end
end
