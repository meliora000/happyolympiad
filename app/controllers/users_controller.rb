class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_post, only: [:show, :edit, :update, :destroy]


  def index
  end

  def show
  end

  private
  def set_post
    @user = User.find(params[:id])
    @posts = @user.posts.order(created_at: :desc)
  end
end
