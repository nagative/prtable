class Form < ActiveRecord::Base
  belongs_to :story
 #validates_presence_of :story

  validates :story,
            :sub_title,
            :picture,
            :description,
            :content,
            presence: true
end
