class Tag < ActiveRecord::Base
  belongs_to :story, foreign_key: "id" inverse_of: :tag
  belongs_to :tagging
end