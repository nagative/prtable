class StoriesController < ApplicationController
	def index
		@story = Story.new
	end
	def create
		Story.create(story_params)
	end
	def show
		@stories = Story.all
	end
	
	private
     def story_params
      params.require(:story).permit(:title, :content, :concept, :user_id).merge(tag_list: params[:story][:tag])
     end

end
