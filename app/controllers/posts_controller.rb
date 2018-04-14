class PostsController < ApplicationController
  def new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    if user_signed_in?
      @post = current_user.posts.create(post_params)
    else
      redirect_to new_user_session_path
    end

    tags_str = params[:data][:tags]
    tags = tags_str.scan(/#(\p{word}+)/i)
    tags.each do |t|
      tag = Tag.find_or_create_by({name: t[0]})
      @post.tags << tag
    end

    @post.video_src = "vid1.mp4"
    @post.likes = 0
    @post.num_comments = 0

    if @post.save
      redirect_to index_path 
    end
  end

  private
  def post_params
    params.require(:post).permit(:story)
  end
end
