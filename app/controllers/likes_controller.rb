class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.new(user: current_user)
    if @like.save
      @like.update_counter
      redirect_to [@post.user, @post]
    else
      redirect_to [@post.user, @post]
    end
  end
end
