class TagsController < ApplicationController
  before_action :is_admin, except: [:index]

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def delete
  end

  private
  def is_admin
    if current_user.type != 'Admin'
      redirect_to root_path, notice: 'You are not autorized to access this page'
    end
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
