class CreateConcerts < ActiveRecord::Migration[7.1]
  def change
    create_table :concerts do |t|
      t.integer :group_id
      t.string :title
      t.integer :venue_id
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :fee
      t.boolean :paid

      t.timestamps
    end
  end
end
