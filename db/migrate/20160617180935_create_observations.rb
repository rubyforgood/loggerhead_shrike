class CreateObservations < ActiveRecord::Migration[5.0]
  def change
    create_table :observations do |t|
      t.datetime :sighted_at
      t.string :location, {precision: 10, scale: 6}
      t.decimal :latitude, {precision: 10, scale: 6}
      t.decimal :longitude
      t.integer :num_bands

      t.timestamps
    end
  end
end
