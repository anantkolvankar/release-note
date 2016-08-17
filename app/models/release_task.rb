class ReleaseTask < ActiveRecord::Base
  belongs_to :task
  belongs_to :release
end
