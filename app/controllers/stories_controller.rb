class StoriesController < ApplicationController

  def index

  end

  def new
    @story = Story.new
    @story.forms.build
  end

  def create
    @story = Story.new(story_params)
    binding.pry
    @story.save
    #redirect_to :root
  end

  def story_params
    params.require(:story).permit(
      :title,
      :user_id,
      :logo,
      :read,
      forms_attributes: [:sub_title, :picture, :description, :content, :story_id]
      )
  end
end
