class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :name
      t.text :q_body
      t.references  :questionnaire, foreign_key: true
      t.timestamps
    end
  end
end
