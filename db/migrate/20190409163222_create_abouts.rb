class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :location_zip
      t.string :phone
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end
