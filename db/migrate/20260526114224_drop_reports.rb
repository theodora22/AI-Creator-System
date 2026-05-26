class DropReports < ActiveRecord::Migration[8.1]
  def change
    drop_table :reports
  end
end
