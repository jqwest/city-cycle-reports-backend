class Api::V1::AuthController < ApplicationController
    def create
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        render json: user
      else
        render json: { error: 'invalid username or password' }
      end
    end
  
    def show
    end
  end