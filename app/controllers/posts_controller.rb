class PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post.to_json(include_featured_image)
  end

  def create
    @post = Post.new(post_params)

    if params[:featured_image]
      @post.featured_image.attach(params[:featured_image])
    end

    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.permit(:title, :body, :featured_image)
  end

  def include_featured_image
    {
      methods: :featured_image_url,
      except: [] # Add any attributes you want to exclude from the JSON response
    }
  end

end
