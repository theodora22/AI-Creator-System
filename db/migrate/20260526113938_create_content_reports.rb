class CreateContentReports < ActiveRecord::Migration[8.1]
  def change
    create_table :content_reports do |t|
      t.text :content_type
      t.string :content_hook
      t.string :content_lenght
      t.string :content_platform
      t.text :system_prompt

      t.timestamps
    end
  end
end
