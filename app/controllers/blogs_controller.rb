class BlogsController < ApplicationController
	before_action :set_user, :require_login

 
	def index 
		@blogs = Blog.all
	end

	def new
		@blogs = Blog.new
	end


	def show
		@blog = Blog.find(params[:id])
	end

	def create
		blog = current_user.blogs.new(blog_params)
		if blog.save
			flash[:success] = "the blog was added!"
			redirect_to '/'
		end	
	end

 private

  def set_user 
  	if current_user
    gon.push({
  	:id => current_user.id,
  	:email => current_user.email
		})
  end
  end

	 def require_login
    unless logged_in?
      redirect_to new_user_session_path
    end
end


	def blog_params
    params.require(:blog).permit(:title, :content)  
  end

 
end