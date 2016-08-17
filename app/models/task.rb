class Task < ActiveRecord::Base
  has_many :release_tasks
  has_many :release, through: :release_tasks
end
