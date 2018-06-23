class StoriesController < ApplicationController
  def new
    @story = Story.new
  end

  def create
    @story = @company.stories.new(story_params)
    @story.save
  end

  def story_params
    params.require(:story).permit(
      :title,
      :sub_title,
      :user,
      :logo,
      :read,
      :picture,
      :description,
      :contnet
      )
  end
end
