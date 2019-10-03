class AddAgeToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :age, :string
  end
end
