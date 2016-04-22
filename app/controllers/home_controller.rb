class HomeController < ApplicationController
  def index
  	# @posts = Post.order("created_at DESC")
  	@new = Post.order('created_at desc').paginate(:page => params[:page], :per_page => 29)
  	@rising	 = Post.order('created_at desc').paginate(:page => params[:page], :per_page => 7)
  	@hots = Post.order('created_at desc').paginate(:page => params[:page], :per_page => 13)
  end
end
