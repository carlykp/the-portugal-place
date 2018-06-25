class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :opener
      t.text :positive
      t.text :negative
      t.references  :user, foreign_key: true

      t.timestamps
    end
  end
end
