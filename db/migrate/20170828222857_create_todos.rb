class CreateTodo < ActiveRecord::Migration[5.1]
  def change
    create_table :todo do |t|
      t.string :item
      t.string :desc
      t.string :author

      t.timestamps
    end
  end
end
