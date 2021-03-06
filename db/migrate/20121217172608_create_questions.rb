class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :quiz_id, null: false
      t.string :name, null: false
      t.timestamps
    end
    add_index :questions, [:quiz_id, :name], unique: true
  end
end
