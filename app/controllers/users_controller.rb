# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :require_signin, except: %i[new create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
end
