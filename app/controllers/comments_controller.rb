class CommentsController < ApplicationController
  before_action :load_post, only: %i[destroy new create]

  def new; end

  def create
    @comment = @post.comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_url(@post), notice: 'Obrigado por seu comentário' }
      else
        format.html { redirect_to post_url(@post), alert: 'errou mizeravi' }
      end
    end
  end

  def destroy
    @post = current_user.posts.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to post_url(@post), notice: 'Comentário apagado' }
    end
  end

  private

  def load_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    user = current_user
    params.require(:comment).permit(:body).merge({ name: user.name, email: user.email })
  end
end
