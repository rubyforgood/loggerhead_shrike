class AddPhotoToObservation < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :observations, :photo
  end

  def self.down
    remove_attachment :observations, :photo
  end
end
