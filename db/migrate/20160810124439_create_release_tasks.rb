class CreateReleaseTasks < ActiveRecord::Migration
  def change
    create_table :release_tasks do |t|
      t.references :task, index: true, foreign_key: true
      t.references :release, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
