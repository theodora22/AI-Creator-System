class CreateContentReport < RubyLLM::Tool
description "Create a new content report"

param :content_title,
type: "string",
desc: "Title of the content"

param :content_type,
type: "string",
desc: "Type of content"

param :content_hook,
type: "string",
desc: "Hook for the content"

param :content_length,
type: "string",
desc: "Desired content length"

param :content_platform,
type: "string",
desc: "Platform where content will be published"

param :system_prompt,
type: "string",
desc: "System prompt used to generate the content"

def execute(
content_title:,
content_type:,
content_hook:,
content_length:,
content_platform:,
system_prompt:
)
content_report = ContentReport.create!(
content_title: content_title,
content_type: content_type,
content_hook: content_hook,
content_length: content_length,
content_platform: content_platform,
system_prompt: system_prompt
)

rescue => e
{
success: false,
error: e.message
}
end
end
