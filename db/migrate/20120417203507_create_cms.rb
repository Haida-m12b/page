class CreateCms < ActiveRecord::Migration
  def change
    create_table :cms do |t|
      t.string :title
      t.string :permalink
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
