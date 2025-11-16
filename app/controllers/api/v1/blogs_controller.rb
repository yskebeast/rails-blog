class Api::V1::BlogsController < ApplicationController
  def index
    @index= "hello index"

    render json: { message: @index }
  end

  def create
  end

  def show
    @show= "hello show"

    render json: { message: @show }
  end

  def update
  end

  def destroy
  end
end
