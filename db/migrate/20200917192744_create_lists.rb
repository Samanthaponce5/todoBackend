class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :task
      t.timestamps
    end
  end
end
