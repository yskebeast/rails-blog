class Api::V1::BlogsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @blogs = Blog.all

    render json: @blogs
  end

  def create
      @blog = Blog.new(blog_params)

      if @blog.save
        render json: @blog, status: :created
      else
        render json: @blog.errors, status: :unprocessable_entity
      end
  end

  def show
    @blog = Blog.find(params[:id])

    render json: @blog
  end

  def update
    @blog = Blog.find(params[:id])

    if @blog.update(blog_params)
      render json: @blog
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    head :no_content
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
