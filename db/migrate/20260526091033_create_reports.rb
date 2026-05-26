class CreateReports < ActiveRecord::Migration[8.1]
  def change
    create_table :reports do |t|
      t.string :goal
      t.string :audience
      t.string :content_topic
      t.string :content_type
      t.text :prompt
      t.text :ai_answer
      t.text :edited_answer
      t.string :status

      t.timestamps
    end
  end
end
