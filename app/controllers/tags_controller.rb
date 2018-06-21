class TagsController < ApplicationController
	def index
		@tags = ActsAsTaggableOn::Tag.most_used
	end
	def show
		@name = Tag.all
		@tags = Tag.page(params[:page])
		@stories = Story.order("created_at DESC").page(params[:page]).per(5)

	end

	private
    def tag_params
      params.permit(:id, :name)
    end
end