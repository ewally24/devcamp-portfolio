class PagesController < ApplicationController
  def home
    @posts = Blog.limit(1)
  end

  def about
  end

  def contact
  end
end
