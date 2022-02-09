class WelcomeController < ApplicationController
  def index
    @posts = Post.order(created_at: :asc).last(7)
  end
end
