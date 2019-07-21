class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :reporttype
      t.string :img
      t.string :petname
      t.string :species
      t.string :gender
      t.string :color
      t.string :descriptions
      t.string :address
      t.date :date
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
