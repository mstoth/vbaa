class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.string :title
      t.string :contact
      t.string :email
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
