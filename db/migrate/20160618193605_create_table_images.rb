class CreateTableImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.text     :image_data
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.integer  :user_id
      t.references :observation, foreign_key: true
    end
  end
end
