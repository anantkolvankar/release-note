class Release < ActiveRecord::Base
  belongs_to :user
  has_many :release_tasks
  has_many :tasks, through: :release_tasks
  validates :version, uniqueness: true, presence: true
end
