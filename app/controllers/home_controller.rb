class HomeController < ApplicationController
  def index
    @posts = Post.order("created_at desc").page(params[:page])
    @tags = Tag.order("taggings_count asc").last(10)
  end
end
