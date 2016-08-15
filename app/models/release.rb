class Release < ActiveRecord::Base
  belongs_to :user
  has_many :release_item
  accepts_nested_attributes_for :release_item
end
