if @comment.persisted?
  json.form render(partial: "comments/comment_form", formats: :html, locals: {comment: Comment.new, meme: @meme})
  json.inserted_item render(partial: "comments/comment_section", formats: :html, locals: {comment: @comment})
else
  json.form render(partial: "comments/comment_form", formats: :html, locals: {comment: @comment, meme: @meme})
end
