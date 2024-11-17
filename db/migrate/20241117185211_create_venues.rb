class CreateVenues < ActiveRecord::Migration[7.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :contact
      t.string :email
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
