class UsersController < ApplicationController
  def index
    @user = user.all 
    render json: userSerializer.new(@user).serializable_hash.to_json
  end

  def show
      @user = user.find(params[:id])
      render json: userSerializer.new(@user).serializable_hash.to_json
  end

  def update
      @user = user.find(params[:id])
      @user.update user_params
      render json: userSerializer.new(@user).serializable_hash.to_json
  end

  def destroy
    user.find(params[:id]).destroy
    render json: {message: 'OK' }.to_json, status: 200
  end

  private

  def user_params
    params.permit(
      :username,
      :email,
      :password
    )
  end
end
