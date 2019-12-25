class PagesController < ApplicationController
  def home
    @contents = Content.all
  end

  def questionare
  end

  def cms
    @contents = Content.all
  end
end
