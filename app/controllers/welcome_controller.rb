class WelcomeController < ApplicationController
  def index
    check_content
  end

  private

  def total_posts
    Post.count > 7 ? 7 : Post.count
  end

  def check_content
    @posts = Post.order(created_at: :asc).last(total_posts)

    if @posts.length < 7
      redirect_to posts_url
    end
  end
end
