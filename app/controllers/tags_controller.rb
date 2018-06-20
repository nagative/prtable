class TagsController < ApplicationController
	def index
		@tags = ActsAsTaggableOn::Tag.most_used
	end
	def show
		@tags = Tag.where(id:1)
	end
end