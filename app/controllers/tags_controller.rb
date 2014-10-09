class TagsController < ApplicationController
  def index
  @tag = Tag.new
  @tags = Tag.all
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path
    else
      @tags = Tag.all
      render :index
    end
  end

  def show
    @tag = Tag.find(params[:id])
  end
  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
