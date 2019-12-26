class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  skip_before_action :authenticate_user!, only: :questionare

  def home
    @contents = Content.all
  end

  def questionare
  end

  def cms
    @contents = Content.all
  end
end
