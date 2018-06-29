class Story < ActiveRecord::Base
  has_many   :images
  has_many   :tags
  has_many   :forms
  belongs_to :user
  belongs_to :tagging

  accepts_nested_attributes_for :forms, allow_destroy: true, reject_if: :reject_forms

  validates :title,
            :user,
            :logo,
            :read,
            presence: true

  def reject_forms(attributed)
    attributed['story_id'].blank?
  end

end

