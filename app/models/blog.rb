class Blog < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :content
  has_many :likes
end
