class UserController < ApplicationController
  def login
      @user=User.new
    end

    def signup
      @user=User.new
    end

    def new
      @user= User.new
    end
    
    def create
      puts "hii"
      @user= User.new(user_params)
      if @user.save
        session[:user_id]= @user.id
        redirect_to :action => "login", notice: "Successfully created account"
      else
        render :action => "signup"
      end
    end
    private
     
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
