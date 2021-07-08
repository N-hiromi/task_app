class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :start
      t.date :end
      t.boolean :shujitu
      t.text :memo
      t.timestamps
    end
  end
end
