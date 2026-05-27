class ContentReport < ApplicationRecord
  has_many :chats

  def title
    content_title.presence || (content_platform.present? && content_type.present? ? "#{content_platform} - #{content_type}" : "Content Report ##{id || 'New'}")
  end

  def status
    "Draft"
  end

  def content
    lines = []
    lines << "Plattform: #{content_platform}" if content_platform.present?
    lines << "Format: #{content_type}" if content_type.present?
    lines << "Länge: #{respond_to?(:content_length) ? content_length : content_lenght}" if (respond_to?(:content_length) ? content_length : content_lenght).present?
    lines << "Hook: #{content_hook}" if content_hook.present?
    lines << "System Prompt: #{system_prompt}" if system_prompt.present?
    lines.join("\n\n")
  end
end
