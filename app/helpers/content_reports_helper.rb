module ContentReportsHelper
  def content_report_title(report)
    report.content_title.presence || (report.content_platform.present? && report.content_type.present? ? "#{report.content_platform} - #{report.content_type}" : "Content Report ##{report.id || 'New'}")
  end

  def content_report_status(report)
    "Draft"
  end

  def content_report_content(report)
    lines = []
    lines << "Plattform: #{report.content_platform}" if report.content_platform.present?
    lines << "Format: #{report.content_type}" if report.content_type.present?
    length = report.respond_to?(:content_length) ? report.content_length : report.content_lenght
    lines << "Länge: #{length}" if length.present?
    lines << "Hook: #{report.content_hook}" if report.content_hook.present?
    lines << "System Prompt: #{report.system_prompt}" if report.system_prompt.present?
    lines.join("\n\n")
  end
end
