class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
 
  def new
  	@comment = Comment.new
  end
 
  def create
  	@comment = Comment.new(comment_params)
  	if @comment.save
  		flash[:success] = 'Your comment was successfully added!'
  		redirect_to(:back)
  	else
  		render 'new'
  	end
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy
  	redirect_to (:back)
  end

  private

  def comment_params
  	params.require(:comment).permit(:user_email, :body, :product_id)
  end
end