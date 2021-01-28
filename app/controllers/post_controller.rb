class PostController < ApplicationController

  def post_params
    params.require(:post).permit(:title, :content, :url, :views, :likes, :image, :video)
  end
end
