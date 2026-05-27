class AddContentTitleToContentReports < ActiveRecord::Migration[8.1]
  def change
    add_column :content_reports, :content_title, :string
  end
end
