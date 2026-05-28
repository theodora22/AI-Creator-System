# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

if Rails.env.development? || Rails.env.test?
  puts "Running database seeding for local environment..."
  ContentReport.destroy_all

  content_reports_data = [
    {
      content_title: "Instagram Reel Script",
      content_type: "Instagram Reel",
      content_hook: "POV: you stopped scrolling because this actually helped",
      content_length: "30-60 seconds",
      content_platform: "Instagram",
      system_prompt: "You are a social media strategist specializing in short-form video content for Instagram. Generate engaging Reel scripts with a strong hook, clear value, and a call to action. Keep the tone casual and conversational."
    },
    {
      content_title: "LinkedIn Thought Leadership Post",
      content_type: "LinkedIn Post",
      content_hook: "I made a mistake that cost us 3 months. Here's what I learned.",
      content_length: "150-300 words",
      content_platform: "LinkedIn",
      system_prompt: "You are a personal branding expert for LinkedIn. Write thought leadership posts that are authentic, story-driven, and end with a question to drive engagement. Use short paragraphs and avoid corporate jargon."
    },
    {
      content_title: "YouTube Long-Form Video Script",
      content_type: "YouTube Script",
      content_hook: "Nobody talks about this side of building a business online",
      content_length: "8-12 minutes",
      content_platform: "YouTube",
      system_prompt: "You are a YouTube scriptwriter for creators in the business and entrepreneurship niche. Write scripts with a compelling intro that hooks within the first 30 seconds, structured sections, and a strong CTA at the end. Optimize for watch time."
    },
    {
      content_title: "TikTok Short-Form Video",
      content_type: "TikTok Video",
      content_hook: "Things I wish I knew before starting my online business",
      content_length: "15-30 seconds",
      content_platform: "TikTok",
      system_prompt: "You are a TikTok content strategist focused on creator economy and entrepreneurship content. Scripts should be punchy, fast-paced, and optimized for the For You Page. Use trending audio cues and text overlays in your descriptions."
    },
    {
      content_title: "Email Newsletter",
      content_type: "Newsletter",
      content_hook: "The content strategy most creators overlook (and how to fix it)",
      content_length: "400-600 words",
      content_platform: "Email",
      system_prompt: "You are an email newsletter copywriter. Write newsletters that feel personal and direct, as if written by a trusted friend. Open with a relatable story or insight, deliver one clear actionable idea, and close with a soft CTA. Avoid salesy language."
    },
    {
      content_title: "Twitter/X Thread Series",
      content_type: "Twitter/X Thread",
      content_hook: "I studied 100 viral creators. Here's the pattern nobody talks about:",
      content_length: "8-12 tweets",
      content_platform: "Twitter/X",
      system_prompt: "You are a Twitter growth strategist. Write threads that start with a bold, curiosity-driven hook tweet and unpack a single idea across 8-12 concise tweets. End with a summary tweet and a follow/retweet CTA. Use numbered lists and white space."
    },
    {
      content_title: "Long-Form SEO Blog Post",
      content_type: "Blog Post",
      content_hook: "How to create 30 days of content in a single afternoon",
      content_length: "800-1200 words",
      content_platform: "Blog",
      system_prompt: "You are an SEO-focused content writer for creators and entrepreneurs. Write blog posts that rank for long-tail keywords, use subheadings every 200-300 words, and include practical examples. Maintain an approachable, expert tone throughout."
    },
    {
      content_title: "Instagram Carousel Post",
      content_type: "Instagram Carousel",
      content_hook: "Save this before your next content planning session",
      content_length: "6-10 slides",
      content_platform: "Instagram",
      system_prompt: "You are a visual content strategist for Instagram carousels. Write slide-by-slide copy that starts with a save-worthy cover, delivers value across each slide, and ends with a CTA slide. Keep each slide to 1-2 short sentences for readability."
    },
    {
      content_title: "Podcast Episode Outline",
      content_type: "Podcast Episode Outline",
      content_hook: "Why most content creators burn out — and how to build a system that lasts",
      content_length: "25-40 minutes",
      content_platform: "Podcast",
      system_prompt: "You are a podcast producer and show notes writer. Create detailed episode outlines with an intro hook, 3-5 structured segments with talking points, and an outro. Also generate a compelling episode description optimized for Spotify and Apple Podcasts."
    },
    {
      content_title: "Facebook Ad Campaign Copy",
      content_type: "Facebook Ad Copy",
      content_hook: "Still posting every day with nothing to show for it?",
      content_length: "50-150 words",
      content_platform: "Facebook",
      system_prompt: "You are a direct-response copywriter specializing in Meta ads for digital creators and online educators. Write ad copy that leads with a pain point, presents a clear solution, and drives clicks with urgency. Include a primary text, headline, and description for each ad."
    },
    {
      content_title: "YouTube Shorts Tutorial Script",
      content_type: "YouTube Shorts Script",
      content_hook: "Stop making your videos look like everybody else's",
      content_length: "15-45 seconds",
      content_platform: "YouTube",
      system_prompt: "You are a short-form video specialist. Write punchy, visual-first scripts for YouTube Shorts that deliver a single, high-impact tip or trick, ending with a loop recommendation."
    },
    {
      content_title: "Medium Technical Publication",
      content_type: "Medium Article",
      content_hook: "We replaced our REST endpoints with GraphQL and instantly regretted it",
      content_length: "1500-2000 words",
      content_platform: "Medium",
      system_prompt: "You are a senior software architect and tech blogger. Write objective, deep-dive architectural post-mortems with code snippets, clear trade-off tables, and structural lessons learned."
    },
    {
      content_title: "Twitch Stream Prep Sheet",
      content_type: "Twitch Outline",
      content_hook: "Live Q&A: Reviewing your SaaS landing pages and fixing your conversion rates!",
      content_length: "2-3 hours stream",
      content_platform: "Twitch",
      system_prompt: "You are a live-streaming producer. Draft dynamic stream agendas featuring milestone check-ins, live audience interaction cues, graphic overlay triggers, and interactive Q&A prompts."
    },
    {
      content_title: "Pinterest Idea Pin Blueprint",
      content_type: "Pinterest Pin",
      content_hook: "5 minimalist workspace aesthetics that boost deep work",
      content_length: "5 dynamic slides",
      content_platform: "Pinterest",
      system_prompt: "You are a Pinterest growth advisor. Create visual-heavy Idea Pin descriptions mapping out font choices, aesthetic imagery cues, and search-optimized tags for highly shareable home decor and workflow trends."
    },
    {
      content_title: "Quora Authority Answer",
      content_type: "Quora Answer",
      content_hook: "Is it still possible to start a profitable SaaS business with $0?",
      content_length: "300-500 words",
      content_platform: "Quora",
      system_prompt: "You are a highly-rated business and startup mentor on Quora. Write structured, expert answers that avoid fluff, address the prompt immediately, and establish industry authority through personal case studies."
    },
    {
      content_title: "Product Hunt Launch Copy",
      content_type: "Product Hunt Pitch",
      content_hook: "Meet ContentFlow: The AI assistant that actually sounds like you",
      content_length: "100-250 words",
      content_platform: "Product Hunt",
      system_prompt: "You are a product launch expert. Write high-converting launch descriptions, direct maker messages, and first-comment explanations that convey unique value, key features, and community discount codes."
    },
    {
      content_title: "Substack Premium Essay",
      content_type: "Substack Article",
      content_hook: "The silent decline of the solo-creator economy",
      content_length: "2000-3000 words",
      content_platform: "Substack",
      system_prompt: "You are a culture critic and economy analyst. Write long-form, thoroughly researched essays analyzing macro-trends in the creator space, integrating qualitative data, charts, and philosophical inquiries."
    },
    {
      content_title: "Kickstarter Campaign Narrative",
      content_type: "Kickstarter Story",
      content_hook: "We built the notebook that stops you from procrastinating",
      content_length: "800-1500 words",
      content_platform: "Kickstarter",
      system_prompt: "You are a crowdfunding narrative designer. Craft compelling pitch pages that balance product origin story, tangible benefits, technical specs, reward tiers, and production roadmap transparency."
    },
    {
      content_title: "Discord Community Pitch",
      content_type: "Discord Announcement",
      content_hook: "🚨 Live Build Challenge: 24 hours to design, code, and launch a complete Web App!",
      content_length: "150-250 words",
      content_platform: "Discord",
      system_prompt: "You are a community manager for a vibrant developer ecosystem. Draft highly energetic community announcements using custom emojis, bold markdown hierarchies, and explicit calendar events."
    },
    {
      content_title: "Spotify Video Podcast Agenda",
      content_type: "Video Podcast Outline",
      content_hook: "Armand Abbas on how to scale agentic coding systems to 100k developers",
      content_length: "45-60 minutes",
      content_platform: "Spotify",
      system_prompt: "You are a professional video podcast editor and planner. Write detailed segment structures featuring specific camera-angle transition markers, guest background research, and visual-broll suggestions."
    }
  ]

  content_reports_data.each do |attrs|
    ContentReport.create!(attrs)
  end

  puts "Seeded #{ContentReport.count} content reports successfully."
else
  puts "Skipping seeds: database seeds are disabled in non-development/test environments."
end
