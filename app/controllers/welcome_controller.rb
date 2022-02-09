class WelcomeController < ApplicationController
  def index
    check_content
  end

  private

  def total_posts
    Post.count > 7 ? 7 : Post.count
  end

  def check_content
    @posts = Post.order(created_at: :desc).last(6)

    if @posts.length < 7
      i = @posts.length
      while i <= 7
        @posts[i] = @posts[0]
        i += 1
      end
    end
  end
end
