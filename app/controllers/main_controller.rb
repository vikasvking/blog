class MainController < ApplicationController
  def index
  	@post=Post.all.order('created_at DESC').paginate(:page=>params[:page],:per_page=>3)
  end
end
