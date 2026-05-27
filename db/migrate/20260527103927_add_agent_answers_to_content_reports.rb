class AddAgentAnswersToContentReports < ActiveRecord::Migration[8.1]
  def change
    add_column :content_reports, :agent_answer, :text
    add_column :content_reports, :refined_answer, :text
  end
end
