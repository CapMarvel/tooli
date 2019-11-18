class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :name
      t.text :description
      t.references :user, foreign_key: true
      t.string :address

      t.timestamps
    end
  end
end
