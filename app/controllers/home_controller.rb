class HomeController < ApplicationController
  def index
    @posts = Post.order("created_at DESC").last(10)
  end

  def hot 
    @posts = Post.order("likes DESC").last(10)
  end

end
