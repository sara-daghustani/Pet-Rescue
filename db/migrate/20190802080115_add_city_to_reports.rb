class AddCityToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :city, :string
  end
end
