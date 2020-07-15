class UsersController < ApplicationController

    def index
    end

    # Show page for once the user is signed in
    def show
        @user = User.find(params[:id])
    end

    private 

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

end