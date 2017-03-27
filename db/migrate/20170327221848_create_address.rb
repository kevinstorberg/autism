class CreateAddress < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street_one
      t.string :street_two
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country
    end
  end
end
