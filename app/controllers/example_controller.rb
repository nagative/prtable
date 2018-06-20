class TagsController < ApplicationController
 def index	
	@tags = Tag.all
  end

  def show
  	  @tags = Tag.all
  	  @shows = Show.all
  end
end
