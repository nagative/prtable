class Tag < ActiveRecord::Base
	belongs_to :story, foreign_key: "id"
	belongs_to :tagging
end
