class CommentsController < ApplicationController
	def create
		@comment=current_user.comments.build( {content:params[:comment][:content],teacher_id:params[:teacher_id] })
		if @comment.save
			flash[:success] = "Comment Success"
		else
			flash[:error] = "Post failed !"
		end
		redirect_to controller:'teachers', action:'show', id:params[:teacher_id]
	end



end
