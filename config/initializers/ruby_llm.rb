RubyLLM.configure do |config|
  config.openai_api_key    = ENV.fetch("OPENAI_API_KEY", nil)
  config.anthropic_api_key = ENV.fetch("ANTHROPIC_API_KEY", nil)
  config.gemini_api_key    = ENV.fetch("GEMINI_API_KEY", nil)
  config.deepseek_api_key  = ENV.fetch("DEEPSEEK_API_KEY", nil)

  config.openai_api_key = ENV.fetch("GITHUB_TOKEN", nil)
  config.openai_api_base = "https://models.inference.ai.azure.com"
  config.default_model = "gpt-4o-mini"

  config.use_new_acts_as = true
end
