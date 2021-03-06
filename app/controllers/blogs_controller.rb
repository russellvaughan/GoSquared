class BlogsController < ApplicationController
	before_action :require_login, :authenticate_user!
  # after_filter :send_body


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
    gs = GoSquared::RubyLibrary.new("1F6DLEGZKZ2QUK48","GSN-589158-M")
    gs.tracking.event({person_id: "email:#{current_user.email}", event: { name: 'the new gem is working' } })
    gs.tracking.post
    if blog.save
     flash[:success] = "the blog was added!"
     redirect_to '/'
   end
 end


#  def set_user
#    if current_user
#     gon.push({
#      :id => current_user.id,
#      :email => current_user.email
#      })
#   end
# end

private


def require_login
  unless logged_in?
    redirect_to new_user_session_path
  end
end

def blog_params
  params.require(:blog).permit(:title, :content)
end



end
