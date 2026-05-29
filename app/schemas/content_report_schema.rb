class ContentReportSchema < RubyLLM::Schema
    string :content_hook, description: "The catch phrase and first sentence of the content piece to be created. It has to capture the audience's attention."
    string :content_length, description: "Specify the optimal length of the content piece to be created according to best practices for the Content Type."
    string :content_platform, description: "Specify the platform/channel the content piece will be created for."
    string :content_title, description: "The title of the content piece to be created. Make it short and snappy.", max_length: 40
    string :content_type, description: "Specify the content type for the content piece to be created. E.g. a blog post, newsletter, social media post etc."
    string :content_script, description: "Create a content script for the content to be created with specific instructions for the creator based on the content report schema."
    string :system_prompt, description: "Dear LLM, your are helping a content creator to create a content report based on a Ruby LLM schema provided to you. Your tasks is to create a customized content report based on the user input and the schema."
end
