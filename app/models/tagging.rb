class Tagging < ActiveRecord::Base
	has_many tags
	has_many stories, through: :tags
end