class HomeController < ApplicationController
  def index
    @posts = Post.order("created_at asc").page(params[:page])
  end
end
