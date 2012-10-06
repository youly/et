#encoding:UTF-8
class TeachersController < ApplicationController
	
	def new
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
	end
	
end
