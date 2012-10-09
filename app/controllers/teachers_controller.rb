#encoding:UTF-8
class TeachersController < ApplicationController
	
	def new
	end

	def index
    	@teachers=Teacher.paginate({ page:params[:page],per_page:10 })		
	end

	def create
		@teacher=Teacher.new(name:params[:name],college:params[:college])
		if @teacher.save
      		flash[:success]="创建教师成功！"
			redirect_to @teacher
		else
			flash.now[:error]="Create failed,try again！"
			render 'new'
		end
	end

	def show
		@teacher=Teacher.find(params[:id])
		@comments=@teacher.comments.paginate(page:params[:page])
		@new_comment=@teacher.comments.build
	end


	
end
