class CreateReleaseItems < ActiveRecord::Migration
  def change
    create_table :release_items do |t|
      t.references :item, index: true, foreign_key: true
      t.references :release, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
