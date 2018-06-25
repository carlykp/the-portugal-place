class CreateRecommendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recommendations do |t|
      t.string :name
      t.text :website
      t.text :description
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
