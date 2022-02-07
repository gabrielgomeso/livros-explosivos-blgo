class WelcomeController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).last(7)
  end
end
