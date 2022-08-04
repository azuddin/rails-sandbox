class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.bigInt :user_id
      t.string :content
      t.timestamps
    end
  end
end
