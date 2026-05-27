# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

content_reports_data = [
  {
    content_type: "Instagram Reel",
    content_hook: "POV: you stopped scrolling because this actually helped",
    content_length: "30-60 seconds",
    content_platform: "Instagram",
    system_prompt: "You are a social media strategist specializing in short-form video content for Instagram. Generate engaging Reel scripts with a strong hook, clear value, and a call to action. Keep the tone casual and conversational."
  },
  {
    content_type: "LinkedIn Post",
    content_hook: "I made a mistake that cost us 3 months. Here's what I learned.",
    content_length: "150-300 words",
    content_platform: "LinkedIn",
    system_prompt: "You are a personal branding expert for LinkedIn. Write thought leadership posts that are authentic, story-driven, and end with a question to drive engagement. Use short paragraphs and avoid corporate jargon."
  },
  {
    content_type: "YouTube Script",
    content_hook: "Nobody talks about this side of building a business online",
    content_length: "8-12 minutes",
    content_platform: "YouTube",
    system_prompt: "You are a YouTube scriptwriter for creators in the business and entrepreneurship niche. Write scripts with a compelling intro that hooks within the first 30 seconds, structured sections, and a strong CTA at the end. Optimize for watch time."
  },
  {
    content_type: "TikTok Video",
    content_hook: "Things I wish I knew before starting my online business",
    content_length: "15-30 seconds",
    content_platform: "TikTok",
    system_prompt: "You are a TikTok content strategist focused on creator economy and entrepreneurship content. Scripts should be punchy, fast-paced, and optimized for the For You Page. Use trending audio cues and text overlays in your descriptions."
  },
  {
    content_type: "Newsletter",
    content_hook: "The content strategy most creators overlook (and how to fix it)",
    content_length: "400-600 words",
    content_platform: "Email / Substack",
    system_prompt: "You are an email newsletter copywriter. Write newsletters that feel personal and direct, as if written by a trusted friend. Open with a relatable story or insight, deliver one clear actionable idea, and close with a soft CTA. Avoid salesy language."
  },
  {
    content_type: "Twitter/X Thread",
    content_hook: "I studied 100 viral creators. Here's the pattern nobody talks about:",
    content_length: "8-12 tweets",
    content_platform: "Twitter/X",
    system_prompt: "You are a Twitter growth strategist. Write threads that start with a bold, curiosity-driven hook tweet and unpack a single idea across 8-12 concise tweets. End with a summary tweet and a follow/retweet CTA. Use numbered lists and white space."
  },
  {
    content_type: "Blog Post",
    content_hook: "How to create 30 days of content in a single afternoon",
    content_length: "800-1200 words",
    content_platform: "Blog / Medium",
    system_prompt: "You are an SEO-focused content writer for creators and entrepreneurs. Write blog posts that rank for long-tail keywords, use subheadings every 200-300 words, and include practical examples. Maintain an approachable, expert tone throughout."
  },
  {
    content_type: "Instagram Carousel",
    content_hook: "Save this before your next content planning session",
    content_length: "6-10 slides",
    content_platform: "Instagram",
    system_prompt: "You are a visual content strategist for Instagram carousels. Write slide-by-slide copy that starts with a save-worthy cover, delivers value across each slide, and ends with a CTA slide. Keep each slide to 1-2 short sentences for readability."
  },
  {
    content_type: "Podcast Episode Outline",
    content_hook: "Why most content creators burn out — and how to build a system that lasts",
    content_length: "25-40 minutes",
    content_platform: "Podcast / Spotify",
    system_prompt: "You are a podcast producer and show notes writer. Create detailed episode outlines with an intro hook, 3-5 structured segments with talking points, and an outro. Also generate a compelling episode description optimized for Spotify and Apple Podcasts."
  },
  {
    content_type: "Facebook Ad Copy",
    content_hook: "Still posting every day with nothing to show for it?",
    content_length: "50-150 words",
    content_platform: "Facebook / Meta Ads",
    system_prompt: "You are a direct-response copywriter specializing in Meta ads for digital creators and online educators. Write ad copy that leads with a pain point, presents a clear solution, and drives clicks with urgency. Include a primary text, headline, and description for each ad."
  }
]

content_reports_data.each do |attrs|
  ContentReport.find_or_create_by!(content_hook: attrs[:content_hook]) do |report|
    report.assign_attributes(attrs)
  end
end

puts "Seeded #{ContentReport.count} content reports."
