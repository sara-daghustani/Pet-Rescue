class ChangePhoneToBeStringInReports < ActiveRecord::Migration[5.2]
  def change
    change_column :reports, :phone, :string
  end
end
