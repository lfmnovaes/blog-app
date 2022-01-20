class LikesController < ApplicationController
  def create
    @post = Post.find(params[:id])
    @like = @post.likes.new(user: current_user)
    respond_to do |format|
      format.html do
        if @like.save
          redirect_to post_path(@post), notice: 'You liked this post'
        else
          redirect_to post_path(@post), alert: 'Failed to like this post'
        end
      end
    end
  end
end
