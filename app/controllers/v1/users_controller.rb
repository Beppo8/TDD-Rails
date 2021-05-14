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
        def login
            @user = User.find_by(email: login_params[:email])
            if @user.present? && @user.authenticate(login_params[:password])
                render :show
            else
                render( json: { errors: I18n.t('user.bad_credentials') }, status: :bad_request)
            end
        end
        private
        def login_params
            params.require(:user).permit(:email, :password)
        end
        def user_params
            params.require(:user).permit(:email, :age, :password)
        end
    end
end