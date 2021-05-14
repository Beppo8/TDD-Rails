module V1
    class UsersController < ApplicationController
        def create
            @user = Owner.new(user_params)
            if @user.valid?
                @user.save
                #render json: @user, status: :created
                render :show, status: :created
            else
                render json: { errors: @user.errors.messages }, status: :bad_request
            end
        end
        private
        def user_params
            params.require(:user).permit(:email, :age, :password)
        end
    end
end