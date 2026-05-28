class ContentReportSchema < RubyLLM::Schema
    string :agent_answer, description: ""
    string :content_hook, description: ""
    string :content_length, description: ""
    string :content_platform, description: ""
    string :content_title, description: ""
    string :content_type, description: ""
    string :refined_answer, description: ""
    string :system_prompt, description: ""
end
