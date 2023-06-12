class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @meme = Meme.find(params[:meme_id])
    @comment = Comment.new(comment_params)
    @comment.meme = @meme
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to root_path, notice: "Comment was successfully created." }
        format.json
      else
        format.html { redirect_to root_path, status: :unprocessable_entity }
        format.json
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
