class AddPhotoToTools < ActiveRecord::Migration[5.2]
  def change
    add_column :tools, :photo, :string
  end
end
