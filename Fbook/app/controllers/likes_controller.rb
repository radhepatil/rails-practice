class LikesController < ApplicationController
  def create
   @like = Like.new(:post_id => params[:post_to_be_liked])
    if @like.save
      respond_to do |format|
        format.html {redirect_to :back, notice: "Liked!"}
        format.js
    end
  end
end
