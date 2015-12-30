class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :list_id
      t.string :content
      t.datetime :due_date

      t.timestamps null: false
    end
  end
end
