class AddQuizzesToUsers < ActiveRecord::Migration
  def up
    add_column :quizzes, :user_id, :integer
    execute "UPDATE quizzes SET user_id = (SELECT id FROM users LIMIT 1)"
    change_column :quizzes, :user_id, :integer, null: false
    add_index :quizzes, [:user_id, :name], unique: true
  end

  def down
    remove_index :quizzes, [:user_id, :name]
    remove_column :quizzes, :user_id
  end
end
