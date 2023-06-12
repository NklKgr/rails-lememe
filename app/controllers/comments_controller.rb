class CommentsController < ApplicationController
  def create
    @meme = Meme.find(params[:meme_id])
    @comment = Comment.new(comment_params)
    @comment.meme = @meme
    @comment.user = current_user
    if @comment.save
      redirect_to meme_path(@meme)
    else
      render "memes/show"
    end
  end
end
