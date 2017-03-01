class CommentsController < ApplicationController

		def new
		    @comment = Comment.new
		end
	

		def create
		    @comment = current_user.comments.new(comment_params)
		    @comment.post_id = params[:post_id]
		   
		      if @comment.save
				flash[:notice] = "Comment was successfully updated."
				redirect_to :back

		        # format.html { redirect_to :back, notice: 'Comment was successfully created.' }
		      else
		        redirect_to :back
		      end
		end


		def update
		    @comment = Comment.find(params[:id])
		    if @comment.update_attributes(comment_params)
		      flash[:notice] = "Comment was successfully updated."
		      redirect_to :back
		    else
		      render :back
		    end
	  	end

	  	def destroy
		    Comment.find(params[:id]).destroy
		    flash[:deleted] = "Comment was successfully deleted."
		    redirect_to :back
		end









		private

	    def comment_params
	      params.require(:comment).permit(:body)
	    end


end
