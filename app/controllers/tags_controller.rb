class TagsController < ApplicationController
 def index
	@tags = []
	    Tag.order("name DESC").each do |tag|
	      i = 0
	      @tags.each do |t|

	        if tag.name != t.name
	          i += 1
	        end
	      end
	      if i == @tags.length
	        @tags << tag
	      end
	    end

  end

  def show
  	# @tags = Tag.find_by(name: params[:name])
  end
end
