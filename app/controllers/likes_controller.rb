class LikesController < ApplicationController

	def create
		@blog = Blog.find(params[:blog_id])
		@blog.likes.create
		render json: {new_likes_count: @blog.likes.count}
	end

end
