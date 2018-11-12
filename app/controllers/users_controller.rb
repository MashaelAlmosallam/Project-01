class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:show]
    def index 
        @user = User.all
    end
    def show
        @user = User.find_by(id: params[:id])
    end
end
