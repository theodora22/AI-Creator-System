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
      system_prompt: "You are a social media strategist specializing in short-form video content for Instagram. Generate engaging Reel scripts with a strong hook, clear value, and a call to action. Keep the tone casual and conversational.",
      content_script: "POV: you stopped scrolling because this actually helped.\n\n[Cut to screen recording]\nHere's the 3-step content system I use every Sunday to plan my entire week.\n\nStep 1 — Pick ONE theme. Don't juggle five topics.\nStep 2 — Write your hook first. Everything else follows.\nStep 3 — Batch record in 90 minutes. Done.\n\nSave this. You'll thank yourself later.\n[CTA: Follow for more weekly content tips]"
    },
    {
      content_title: "LinkedIn Thought Leadership Post",
      content_type: "LinkedIn Post",
      content_hook: "I made a mistake that cost us 3 months. Here's what I learned.",
      content_length: "150-300 words",
      content_platform: "LinkedIn",
      system_prompt: "You are a personal branding expert for LinkedIn. Write thought leadership posts that are authentic, story-driven, and end with a question to drive engagement. Use short paragraphs and avoid corporate jargon.",
      content_script: "I made a mistake that cost us 3 months. Here's what I learned.\n\nWe launched without validating the core assumption.\n\nNot the product. Not the price. The *problem*.\n\nWe assumed people were frustrated enough to pay for a solution. They weren't.\n\nSo we rebuilt the onboarding, rewrote the messaging, and ran 40 user interviews we should have done on day one.\n\nThe fix was simple once we saw it clearly:\n\nTalk to customers before you write a single line of code.\n\nNow it's a rule we don't break.\n\nWhat's the most expensive assumption your team has ever made?"
    },
    {
      content_title: "YouTube Long-Form Video Script",
      content_type: "YouTube Script",
      content_hook: "Nobody talks about this side of building a business online",
      content_length: "8-12 minutes",
      content_platform: "YouTube",
      system_prompt: "You are a YouTube scriptwriter for creators in the business and entrepreneurship niche. Write scripts with a compelling intro that hooks within the first 30 seconds, structured sections, and a strong CTA at the end. Optimize for watch time.",
      content_script: "[HOOK — 0:00–0:30]\nNobody talks about this side of building a business online. Not the wins. Not the revenue screenshots. The part where you question everything at 11pm on a Tuesday.\n\n[INTRO — 0:30–1:30]\nI've been building online for 4 years. And the thing that almost made me quit wasn't the algorithm or the competition — it was the loneliness of the middle stage.\n\n[SECTION 1 — The Middle Stage Problem]\nEverybody talks about starting and scaling. Nobody talks about the 18-month gap in between where nothing feels like it's working...\n\n[SECTION 2 — What I Did Differently]\nI stopped optimizing content and started optimizing for clarity. One platform. One offer. One audience.\n\n[SECTION 3 — The Framework]\nHere's the 3-part system I used to get unstuck...\n\n[CTA — Final 30 seconds]\nIf this hit home, subscribe — I post every week about building a real business without burning out."
    },
    {
      content_title: "TikTok Short-Form Video",
      content_type: "TikTok Video",
      content_hook: "Things I wish I knew before starting my online business",
      content_length: "15-30 seconds",
      content_platform: "TikTok",
      system_prompt: "You are a TikTok content strategist focused on creator economy and entrepreneurship content. Scripts should be punchy, fast-paced, and optimized for the For You Page. Use trending audio cues and text overlays in your descriptions.",
      content_script: "[Text overlay: POV: Starting an online business]\nThings I wish I knew before starting my online business —\n\nNumber one: your first offer will probably be wrong. Ship it anyway.\nNumber two: consistency beats quality in year one.\nNumber three: no one cares about your logo. Get a customer first.\n\n[Text overlay: Save this for when you feel stuck]\nFollow for more honest business content."
    },
    {
      content_title: "Email Newsletter",
      content_type: "Newsletter",
      content_hook: "The content strategy most creators overlook (and how to fix it)",
      content_length: "400-600 words",
      content_platform: "Email",
      system_prompt: "You are an email newsletter copywriter. Write newsletters that feel personal and direct, as if written by a trusted friend. Open with a relatable story or insight, deliver one clear actionable idea, and close with a soft CTA. Avoid salesy language.",
      content_script: "Subject: The content strategy most creators overlook (and how to fix it)\n\nHey [First Name],\n\nLast month I sat down to plan content and realized I'd been publishing for 6 months without a content pillar strategy. Just vibes and caffeine.\n\nHere's what I was missing: the repurposing loop.\n\nMost creators create content once and move on. The smarter play is to build one core piece — a long YouTube video, a newsletter, a podcast — and break it into 5–8 smaller assets.\n\nOne video becomes:\n- 3 TikToks\n- 2 LinkedIn posts\n- 1 email (like this one)\n- 4 tweets\n\nYou're not creating more. You're distributing smarter.\n\nThis week, pick your best-performing piece of content from the last 90 days and repurpose it into two other formats. That's it.\n\nLet me know what you make.\n\n— [Your Name]\n\nP.S. If you want a repurposing template, reply \"template\" and I'll send it over."
    },
    {
      content_title: "Twitter/X Thread Series",
      content_type: "Twitter/X Thread",
      content_hook: "I studied 100 viral creators. Here's the pattern nobody talks about:",
      content_length: "8-12 tweets",
      content_platform: "Twitter/X",
      system_prompt: "You are a Twitter growth strategist. Write threads that start with a bold, curiosity-driven hook tweet and unpack a single idea across 8-12 concise tweets. End with a summary tweet and a follow/retweet CTA. Use numbered lists and white space.",
      content_script: "1/ I studied 100 viral creators. Here's the pattern nobody talks about:\n\n2/ They don't post more. They post *differently*.\n\n3/ Every viral post answers one of three questions:\n- What do I believe?\n- What did I learn?\n- What surprised me?\n\n4/ They pick a lane and stay in it. Not forever — but long enough for the algorithm to understand them.\n\n5/ They write for skimmers. Short sentences. Line breaks. One idea per tweet.\n\n6/ They engage *before* they post. 30 minutes of replies warms the algorithm before your content goes live.\n\n7/ They don't chase trends. They create evergreen content that compounds.\n\n8/ The biggest secret? They treat Twitter like a product, not a diary.\n\n9/ TL;DR — Go deep on one topic. Write simply. Engage first. Stay consistent.\n\n10/ If this was useful, retweet tweet 1 so others can see it.\nFollow me for more creator growth breakdowns."
    },
    {
      content_title: "Long-Form SEO Blog Post",
      content_type: "Blog Post",
      content_hook: "How to create 30 days of content in a single afternoon",
      content_length: "800-1200 words",
      content_platform: "Blog",
      system_prompt: "You are an SEO-focused content writer for creators and entrepreneurs. Write blog posts that rank for long-tail keywords, use subheadings every 200-300 words, and include practical examples. Maintain an approachable, expert tone throughout.",
      content_script: "# How to Create 30 Days of Content in a Single Afternoon\n\nMost creators spend more time planning content than actually creating it. This guide shows you how to flip that ratio.\n\n## Why Batching Works\n\nContext switching is expensive. Every time you stop to think \"what should I post today?\" you're draining creative energy that could go into making the content itself.\n\nBatching solves this by separating the thinking from the doing.\n\n## Step 1: Run a Content Audit (20 minutes)\n\nPull your last 30 posts and identify your top 5 performers by engagement. These are your proven topics — create variations of them first.\n\n## Step 2: Build a Content Matrix (30 minutes)\n\nCreate a simple grid: 5 topics × 6 formats = 30 pieces of content. Formats can include tips, stories, polls, behind-the-scenes, tutorials, and opinions.\n\n## Step 3: Batch-Write in Sprints (2 hours)\n\nSet a timer for 25 minutes. Write all 6 variations of one topic. Break for 5 minutes. Repeat.\n\n## Final Thoughts\n\nYou don't need more hours in the day. You need a better system."
    },
    {
      content_title: "Instagram Carousel Post",
      content_type: "Instagram Carousel",
      content_hook: "Save this before your next content planning session",
      content_length: "6-10 slides",
      content_platform: "Instagram",
      system_prompt: "You are a visual content strategist for Instagram carousels. Write slide-by-slide copy that starts with a save-worthy cover, delivers value across each slide, and ends with a CTA slide. Keep each slide to 1-2 short sentences for readability.",
      content_script: "Slide 1 (Cover): Save this before your next content planning session.\n\nSlide 2: Most creators plan content wrong. They start with the format, not the goal.\n\nSlide 3: Step 1 — Define your monthly focus. One theme. One message. Repeat it everywhere.\n\nSlide 4: Step 2 — Map your content pillars. Education / Inspiration / Behind-the-scenes / Promotion.\n\nSlide 5: Step 3 — Fill your calendar backwards. Start with your promo date and work forward.\n\nSlide 6: Step 4 — Write hooks before anything else. Your hook IS the content.\n\nSlide 7: Step 5 — Batch by format, not by day. Record all Reels in one session.\n\nSlide 8: Step 6 — Leave one slot per week for trending or reactive content.\n\nSlide 9 (CTA): Follow for weekly content strategy breakdowns. Share this with a creator friend who needs it."
    },
    {
      content_title: "Podcast Episode Outline",
      content_type: "Podcast Episode Outline",
      content_hook: "Why most content creators burn out — and how to build a system that lasts",
      content_length: "25-40 minutes",
      content_platform: "Podcast",
      system_prompt: "You are a podcast producer and show notes writer. Create detailed episode outlines with an intro hook, 3-5 structured segments with talking points, and an outro. Also generate a compelling episode description optimized for Spotify and Apple Podcasts.",
      content_script: "Episode Title: Why Most Content Creators Burn Out — And How to Build a System That Lasts\n\n[INTRO — 2 min]\nHook: \"I almost quit in month 8. Not because it wasn't working — but because I had no idea how to keep going.\"\nIntroduce the episode focus: burnout is a systems problem, not a willpower problem.\n\n[SEGMENT 1 — The Burnout Trap (5 min)]\n- Why creators plateau and panic\n- The \"always-on\" content myth\n- Signs your workflow is unsustainable\n\n[SEGMENT 2 — The Root Cause (8 min)]\n- Creating without a strategy vs. creating with intention\n- How reactive content kills creativity\n- Personal story: the week I posted nothing and gained 400 followers\n\n[SEGMENT 3 — The Sustainable System (12 min)]\n- The 3-layer content system: anchor, amplify, engage\n- Time-blocking for creative work\n- How to build a 2-week content buffer\n\n[SEGMENT 4 — Q&A from listeners (5 min)]\n- Listener question: \"How do you stay motivated when growth is slow?\"\n\n[OUTRO — 3 min]\nSummary + key takeaway. CTA: Leave a review, share the episode, subscribe."
    },
    {
      content_title: "Facebook Ad Campaign Copy",
      content_type: "Facebook Ad Copy",
      content_hook: "Still posting every day with nothing to show for it?",
      content_length: "50-150 words",
      content_platform: "Facebook",
      system_prompt: "You are a direct-response copywriter specializing in Meta ads for digital creators and online educators. Write ad copy that leads with a pain point, presents a clear solution, and drives clicks with urgency. Include a primary text, headline, and description for each ad.",
      content_script: "Primary Text:\nStill posting every day with nothing to show for it?\n\nYou're not the problem. Your strategy is.\n\nOur free Content Engine Blueprint shows you exactly how to turn one idea into a week of content — in under 2 hours.\n\n3,400 creators downloaded it last month. It's yours free today.\n\n👇 Click below before we close the waitlist.\n\nHeadline: Get the Free Content Blueprint\n\nDescription: Stop guessing. Start creating with a system that actually works."
    },
    {
      content_title: "YouTube Shorts Tutorial Script",
      content_type: "YouTube Shorts Script",
      content_hook: "Stop making your videos look like everybody else's",
      content_length: "15-45 seconds",
      content_platform: "YouTube",
      system_prompt: "You are a short-form video specialist. Write punchy, visual-first scripts for YouTube Shorts that deliver a single, high-impact tip or trick, ending with a loop recommendation.",
      content_script: "[On camera, direct to lens]\nStop making your videos look like everybody else's.\n\nHere's one edit trick that instantly makes your content stand out:\n\n[Cut to screen recording]\nAdd a subtle zoom push — 100% to 103% — every time you make a key point. It keeps the viewer's eye moving without feeling shaky.\n\n[Back on camera]\nTry it on your next video. You'll never go back.\n\n[Text overlay: Watch again to catch the technique]\n[End with loop back to opening frame]"
    },
    {
      content_title: "Medium Technical Publication",
      content_type: "Medium Article",
      content_hook: "We replaced our REST endpoints with GraphQL and instantly regretted it",
      content_length: "1500-2000 words",
      content_platform: "Medium",
      system_prompt: "You are a senior software architect and tech blogger. Write objective, deep-dive architectural post-mortems with code snippets, clear trade-off tables, and structural lessons learned.",
      content_script: "# We Replaced Our REST Endpoints with GraphQL and Instantly Regretted It\n\n## The Decision\n\nIn Q3 last year, our team made the call to migrate our public API from REST to GraphQL. The pitch was compelling: flexible queries, fewer round trips, self-documenting schema. Six months later, we partially rolled it back.\n\nHere's what we got wrong — and what we'd do differently.\n\n## What Worked\n\n- Client teams loved query flexibility\n- We eliminated three over-fetching patterns immediately\n- Schema introspection improved onboarding for new engineers\n\n## What Didn't\n\n**N+1 queries hit us hard.** Without DataLoader configured from day one, our database query count increased 4x under load.\n\n**Caching became non-trivial.** REST's URL-based caching via CDN was gone. We had to implement persisted queries and custom cache keys.\n\n**Error handling regressed.** GraphQL always returns 200 OK — our monitoring missed real failures for two weeks.\n\n## The Trade-off Table\n\n| Concern | REST | GraphQL |\n|---|---|---|\n| CDN caching | Native | Requires persisted queries |\n| Error visibility | HTTP status codes | Requires custom parsing |\n| Query flexibility | Low | High |\n| N+1 risk | Low | High without DataLoader |\n\n## What We'd Do Differently\n\nStart with GraphQL on internal APIs only. Prove the pattern before exposing it externally. And configure DataLoader before writing your first resolver — not after."
    },
    {
      content_title: "Twitch Stream Prep Sheet",
      content_type: "Twitch Outline",
      content_hook: "Live Q&A: Reviewing your SaaS landing pages and fixing your conversion rates!",
      content_length: "2-3 hours stream",
      content_platform: "Twitch",
      system_prompt: "You are a live-streaming producer. Draft dynamic stream agendas featuring milestone check-ins, live audience interaction cues, graphic overlay triggers, and interactive Q&A prompts.",
      content_script: "Stream Title: Live Q&A — Reviewing Your SaaS Landing Pages & Fixing Your Conversion Rates!\n\n[PRE-STREAM — 10 min before]\n- Loop intro screen with submission form link\n- Overlay: \"Drop your landing page URL in chat\"\n\n[OPENING — 0:00–0:15]\n- Welcome viewers, explain format\n- Shoutout to first-time chatters\n- [OVERLAY: \"Submit your URL — we go live in 5\"]\n\n[SEGMENT 1 — Warm-Up Review (0:15–0:45)]\n- Review 2 pre-selected landing pages from previous stream\n- Cover: headline clarity, CTA visibility, social proof placement\n- Chat vote: \"Which version converts better? A or B?\"\n\n[SEGMENT 2 — Live Reviews (0:45–2:00)]\n- Review submitted pages in real time\n- Running commentary on: fold content, load speed, trust signals\n- [MILESTONE OVERLAY at 50 viewers: \"Bonus teardown unlocked!\"]\n\n[SEGMENT 3 — Fix-It Live (2:00–2:30)]\n- Pick one page and rebuild the headline + CTA on screen\n- Use Figma or plain text editor\n\n[OUTRO — 2:30–2:45]\n- Summary of top 3 conversion fixes from tonight\n- Raid another creator\n- CTA: Follow + enable notifications for next stream"
    },
    {
      content_title: "Pinterest Idea Pin Blueprint",
      content_type: "Pinterest Pin",
      content_hook: "5 minimalist workspace aesthetics that boost deep work",
      content_length: "5 dynamic slides",
      content_platform: "Pinterest",
      system_prompt: "You are a Pinterest growth advisor. Create visual-heavy Idea Pin descriptions mapping out font choices, aesthetic imagery cues, and search-optimized tags for highly shareable home decor and workflow trends.",
      content_script: "Pin Title: 5 Minimalist Workspace Aesthetics That Boost Deep Work\n\nSlide 1 (Cover):\nVisual: clean white desk, single plant, warm lamp\nFont: serif, soft beige overlay\nText: \"5 Desk Setups That Help You Actually Focus\"\n\nSlide 2:\nAesthetic: Japandi — neutral wood tones, negative space\nText: \"Less clutter = fewer decision points = deeper focus\"\nImage cue: low desk, woven mat, single notebook\n\nSlide 3:\nAesthetic: Dark Academia — warm amber lighting, stacked books\nText: \"Ambient lighting cuts screen fatigue by 30%\"\nImage cue: Edison bulb, dark wood bookshelf\n\nSlide 4:\nAesthetic: Coastal Calm — whites, linens, soft blues\nText: \"Natural textures signal your brain to slow down\"\nImage cue: linen desk mat, white walls, ocean print\n\nSlide 5 (CTA):\nText: \"Save for your next desk refresh\"\nTags: #minimalistworkspace #deepwork #homeoffice #desksetup #workfromhome #minimalism #productivitytips"
    },
    {
      content_title: "Quora Authority Answer",
      content_type: "Quora Answer",
      content_hook: "Is it still possible to start a profitable SaaS business with $0?",
      content_length: "300-500 words",
      content_platform: "Quora",
      system_prompt: "You are a highly-rated business and startup mentor on Quora. Write structured, expert answers that avoid fluff, address the prompt immediately, and establish industry authority through personal case studies.",
      content_script: "Yes — but the definition of $0 matters.\n\nI've helped launch three SaaS products with minimal upfront capital. Here's the honest breakdown:\n\n**What you can actually do for $0:**\n- Validate the idea with a landing page (Carrd, free tier)\n- Build an MVP using no-code tools (Bubble, Glide)\n- Drive early traffic via cold outreach and community posting\n- Use Stripe's free tier to process first payments\n\n**What will eventually cost money:**\n- Hosting beyond hobby tiers (plan for ~$20–50/month once you have users)\n- Your own time (this is your real capital investment)\n\n**The critical mistake most founders make at $0:**\n\nThey build before they sell. A $0 SaaS that takes 6 months to build and never gets a paying customer isn't cheap — it's expensive in the worst currency: time.\n\nThe better path: Sell the idea first. Build a waitlist. Close 3 paying customers on a manual process. *Then* write the code.\n\nI've seen founders go from $0 to $5k MRR in 90 days using this sequence. Not the norm — but it's achievable if you're solving a real, specific problem for a reachable audience.\n\nThe bottleneck isn't money. It's clarity on the problem and the discipline to validate before building."
    },
    {
      content_title: "Product Hunt Launch Copy",
      content_type: "Product Hunt Pitch",
      content_hook: "Meet ContentFlow: The AI assistant that actually sounds like you",
      content_length: "100-250 words",
      content_platform: "Product Hunt",
      system_prompt: "You are a product launch expert. Write high-converting launch descriptions, direct maker messages, and first-comment explanations that convey unique value, key features, and community discount codes.",
      content_script: "Tagline: The AI content assistant that writes in your voice — not a robot's.\n\nLaunch Description:\nMeet ContentFlow — built for creators who are tired of AI content that sounds like everyone else.\n\nContentFlow learns your tone, your audience, and your content pillars. Then it helps you go from blank page to publish-ready in minutes.\n\n✅ Voice training from your best-performing posts\n✅ Multi-platform output: LinkedIn, TikTok, email, and more\n✅ Built-in content calendar and batch scheduling\n✅ One-click repurposing from long to short form\n\nWe built this after spending 18 months talking to creators who felt like AI tools made their content worse, not better. ContentFlow is our answer.\n\nMaker First Comment:\nHey Product Hunt! 👋 We're the team behind ContentFlow.\n\nWe're offering the first 200 hunters 40% off the annual plan — use code PHLAUNCH at checkout.\n\nWould love your feedback. What content type would you most want AI help with? Drop it below — we read every reply."
    },
    {
      content_title: "Substack Premium Essay",
      content_type: "Substack Article",
      content_hook: "The silent decline of the solo-creator economy",
      content_length: "2000-3000 words",
      content_platform: "Substack",
      system_prompt: "You are a culture critic and economy analyst. Write long-form, thoroughly researched essays analyzing macro-trends in the creator space, integrating qualitative data, charts, and philosophical inquiries.",
      content_script: "# The Silent Decline of the Solo-Creator Economy\n\nSomething is happening in the creator economy that the glossy case studies don't talk about.\n\nThe solo creator — the one-person media company that became a cultural archetype between 2018 and 2023 — is quietly struggling.\n\n## The Numbers Don't Lie\n\nPlatform revenue-share payouts have compressed. CPMs are down across YouTube and newsletters. The cost of audience acquisition has tripled since iOS 14.5 shattered Meta's targeting infrastructure.\n\nMeanwhile, the top 1% of creators — those with 500k+ followers and diversified revenue stacks — are thriving. The gap between them and everyone else is widening.\n\n## The Structural Shift Nobody Talks About\n\nWe sold an entire generation on the idea that reach equals income. It doesn't anymore. Distribution is cheap. Attention is abundant. Trust is scarce.\n\nThe creators who are surviving — and building real businesses — have figured out that the game changed: from audience building to community ownership.\n\n## What Comes Next\n\nThe solo-creator era isn't ending. It's stratifying. What we're watching is the maturation of an industry that rewards specialization, depth, and direct relationships — and punishes those still chasing the algorithm.\n\nThe question isn't whether you can still make it as a solo creator. It's whether you're building something that could survive if your follower count disappeared tomorrow."
    },
    {
      content_title: "Kickstarter Campaign Narrative",
      content_type: "Kickstarter Story",
      content_hook: "We built the notebook that stops you from procrastinating",
      content_length: "800-1500 words",
      content_platform: "Kickstarter",
      system_prompt: "You are a crowdfunding narrative designer. Craft compelling pitch pages that balance product origin story, tangible benefits, technical specs, reward tiers, and production roadmap transparency.",
      content_script: "## We Built the Notebook That Stops You from Procrastinating\n\n### The Problem\n\nMost productivity notebooks assume you already know how to start. We don't.\n\nWe built the Momentum Notebook after watching brilliant people — including ourselves — spend more time planning their day than living it.\n\n### The Solution\n\nMomentum uses a 3-block daily structure proven by behavioral science:\n\n1. **The Single Priority** — one task that must happen today, no matter what\n2. **The Resistance Log** — a 2-minute reflection on what's blocking you\n3. **The Micro-Commit** — the smallest possible next action\n\n### What Makes It Different\n\n- 180gsm Tomoe River paper — fountain pen friendly\n- Lay-flat binding for desk and travel use\n- Built-in weekly review spread\n- No dates — start any day, no wasted pages\n\n### Reward Tiers\n\n🟢 **Early Bird ($28)** — 1 Momentum Notebook + digital quick-start guide\n🔵 **Duo Pack ($49)** — 2 notebooks + sticker set\n🟣 **Founder Edition ($120)** — 5 notebooks + personalized embossing + lifetime discount\n\n### Production Timeline\n\n- Month 1: Final print proofing\n- Month 2–3: Production run\n- Month 4: Fulfillment and shipping\n\nWe've already completed two production test runs. This campaign funds the first commercial print. Delivery is guaranteed by [date]."
    },
    {
      content_title: "Discord Community Pitch",
      content_type: "Discord Announcement",
      content_hook: "🚨 Live Build Challenge: 24 hours to design, code, and launch a complete Web App!",
      content_length: "150-250 words",
      content_platform: "Discord",
      system_prompt: "You are a community manager for a vibrant developer ecosystem. Draft highly energetic community announcements using custom emojis, bold markdown hierarchies, and explicit calendar events.",
      content_script: "🚨 **LIVE BUILD CHALLENGE — 24 HOURS STARTS NOW** 🚨\n\n@everyone\n\nThe rules are simple:\n⏱️ 24 hours\n🎨 Design it\n💻 Code it\n🚀 Launch it\n\n**What you're building:** A complete web app. Solo or in pairs.\n\n**The theme drops in:** `#challenge-announcements` at 9:00 AM EST tomorrow.\n\n---\n\n📅 **Event Calendar**\n- Kickoff: Saturday 9:00 AM EST\n- Mid-point check-in: Saturday 9:00 PM EST (drop your WIP in `#progress-log`)\n- Submissions close: Sunday 9:00 AM EST\n- Winner announced: Sunday 3:00 PM EST\n\n---\n\n🏆 **Prizes**\n- 1st Place: $500 + feature in our newsletter (12k subscribers)\n- 2nd Place: $200 + 3-month pro subscription\n- 3rd Place: $100 + community shoutout\n\n---\n\nReact with 🔨 if you're IN.\nDrop your team name in `#team-formation` to find a partner.\n\nLet's build something wild. 🔥"
    },
    {
      content_title: "Spotify Video Podcast Agenda",
      content_type: "Video Podcast Outline",
      content_hook: "Armand Abbas on how to scale agentic coding systems to 100k developers",
      content_length: "45-60 minutes",
      content_platform: "Spotify",
      system_prompt: "You are a professional video podcast editor and planner. Write detailed segment structures featuring specific camera-angle transition markers, guest background research, and visual-broll suggestions.",
      content_script: "Episode Title: Armand Abbas on Scaling Agentic Coding Systems to 100k Developers\n\n[PRE-ROLL — 2 min]\n- Camera: wide two-shot establishing\n- Intro music fade\n- Host teaser: \"Today's guest shipped the tooling that 100,000 developers now use every day. Here's how.\"\n\n[SEGMENT 1 — Guest Background (0:00–8:00)]\n- Camera: single on guest\n- Topics: Armand's path, early career, how he came to agentic systems\n- B-roll suggestion: product demo screen recording, GitHub activity graph\n\n[SEGMENT 2 — The Problem (8:00–18:00)]\n- Camera: alternating cuts, 2-shot during dialogue\n- Topics: What breaks when AI coding tools scale beyond 1k users? Latency, context drift, hallucination rate\n- Visual: whiteboard diagram of agent loop architecture\n\n[SEGMENT 3 — The Solution Architecture (18:00–35:00)]\n- Camera: over-shoulder on screen for technical walkthrough\n- Topics: How the system routes tasks, handles context windows, and manages agent memory\n- B-roll: live code demo\n\n[SEGMENT 4 — Lessons and Predictions (35:00–48:00)]\n- Camera: two-shot, relaxed framing\n- Topics: What surprised him, what he'd build differently, where agentic coding goes in 3 years\n\n[OUTRO — 48:00–50:00]\n- Host wrap-up, where to follow Armand\n- CTA: subscribe, leave a review, share the episode"
    }
  ]

  content_reports_data.each do |attrs|
    ContentReport.create!(attrs)
  end

  puts "Seeded #{ContentReport.count} content reports successfully."
else
  puts "Skipping seeds: database seeds are disabled in non-development/test environments."
end
