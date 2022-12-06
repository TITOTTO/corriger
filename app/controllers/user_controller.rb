class UserController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        #l'user mailer envoi un mail après l'inscription
        UserMailer.with(user: @user).welcome_email.deliver_later

        format.html { assert_redirected_to(@user, notice: 'User was successfully created.')}
        format.json { render json: @user, status: :created, location:@user}

      else
        format.html { rend action: 'new' }
        format.json { render json: @user.errors, status: unprocessable_entity}
      end
    end
  end
end
