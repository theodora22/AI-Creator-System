class RenameContentLenghtToContentLengthInContentReports < ActiveRecord::Migration[8.1]
  def change
    rename_column :content_reports, :content_lenght, :content_length
  end
end
