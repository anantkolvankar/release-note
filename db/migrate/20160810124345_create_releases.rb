class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.integer :version
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
