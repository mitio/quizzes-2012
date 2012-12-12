class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name, null: false
      t.timestamps
    end
    add_index :quizzes, :name, unique: true
  end
end
