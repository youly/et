#encoding:UTF-8
class UsersController < ApplicationController
  
  before_filter :signed_in_user,only:[:edit,:update,:index]
  before_filter :correct_user,only:[:edit,:update]

  def new
  	@user=User.new
  end

  def create
  	@user=User.new(params[:user])
  	if @user.save
      sign_in @user
      flash[:success]="欢迎来到教师点评网"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def show
      @user=User.find(params[:id])
      @dynamic_comments=@user.comments.paginate(page:params[:page])
  end

  def edit
      @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = 'Profile updated'
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def index
    @users=User.paginate({ page:params[:page],per_page:10 })
  end

  private
    def signed_in_user
      redirect_to signin_url,notice:"Please login first" unless signed_in?
    end

    def correct_user
      @user=User.find(params[:id])
      redirect_to root_path unless current_user?(@user)
    end
end
