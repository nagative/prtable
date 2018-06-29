class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :stories
  belongs_to :contact

  with_options presence: true do
    validates :name
    validates :representative
    validates :foundation
    validates :address
  end
end
