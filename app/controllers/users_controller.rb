#encoding:UTF-8
class UsersController < ApplicationController
  def new
  	@user=User.new
  end

  def create
  	@user=User.new(params[:user])
  	if @user.save
      flash[:success]="欢迎来到教师点评网"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def show
    @user=User.find(params[:id])
  end
end
