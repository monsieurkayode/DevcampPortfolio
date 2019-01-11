class PagesController < ApplicationController
  def home
    @posts = Blog.includes(:topic).all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end
