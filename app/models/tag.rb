class Tag < ActiveRecord::Base
  belongs_to :story
  belongs_to :tagging
end
