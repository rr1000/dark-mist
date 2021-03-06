class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        # The debugger console can be used when uncommenting the helper below
        # debugger
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            signin @user
            flash[:success] = "Congrats. You're now our eternal slave."
            redirect_to @user
        else
            render 'new'
        end
    end
    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end
end
