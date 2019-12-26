class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  def index
    @contents = Content.all
  end

  def show
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(params[:content])
    @content.save
  end

  def edit
  end

  def update
    @content.update(content_params)
    redirect_to content_path(@content)
  end

  def destroy
    @content.destroy
  end

  private

  def content_params
    params.require(:content).permit(:title, :description, :image)
  end

  def set_content
    @content = Content.find(params[:id])
  end
end
