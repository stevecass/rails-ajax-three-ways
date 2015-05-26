class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    @comment = post.comments.build(comment_params)

    if @comment.save
      respond_to do |format|
        format.html { render @comment, layout: false }
        format.json { }
        format.js { }
      end
    else

    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user: current_user)

  end
end