# YKS Dostum

**An AI-powered study companion for students preparing for Turkey's university entrance exam (YKS).**

Built with SwiftUI as a computer science project for our university's IEEE Student Branch — designed to help students stay organized, focused, and motivated during exam prep.

<p>
  <img src="https://img.shields.io/badge/Swift-F05138?style=flat-square&logo=swift&logoColor=white" />
  <img src="https://img.shields.io/badge/SwiftUI-007AFF?style=flat-square&logo=swift&logoColor=white" />
  <img src="https://img.shields.io/badge/iOS-000000?style=flat-square&logo=apple&logoColor=white" />
  <img src="https://img.shields.io/badge/Supabase-3ECF8E?style=flat-square&logo=supabase&logoColor=white" />
  <img src="https://img.shields.io/badge/Gemini_AI-8E75B2?style=flat-square&logo=googlegemini&logoColor=white" />
  <img src="https://img.shields.io/badge/License-MIT-blue?style=flat-square" />
</p>

## Screenshots

> _Coming soon — screenshots will be added here._

| Dashboard | Study Plan | AI Chat Assistant |
|---|---|---|
| _screenshot_ | _screenshot_ | _screenshot_ |

## Overview

YKS Dostum brings together the tools a student actually needs during exam prep into one app: a countdown to exam day, a Pomodoro-based study timer, subject/topic tracking, an AI assistant for quick questions, and a gamified achievement system to keep motivation up — instead of juggling five different apps.

## Features

**Study Tools**
- 📊 Dashboard with a live overview of study progress and stats
- ⏱️ Pomodoro timers with background execution and local notifications
- 📅 Weekly calendar and study plan with statistics
- 📈 Topic tracking (*konu takibi*) across exam subjects
- 📝 Test/mock exam result logging and history
- ⏳ Countdown widget to exam day

**AI & Smart Features**
- 🤖 In-app AI study assistant powered by Google Gemini — answers questions, explains topics, and gives study advice
- 🏆 Achievement & gamification system to reward consistent study habits

**Utilities**
- 📍 Nearby libraries finder using MapKit + Core Location
- 🔔 Local notifications for timers and reminders
- ⚙️ Full settings customization

## Tech Stack

- **UI:** SwiftUI
- **Architecture:** MVVM (`ViewModel` per feature, `ObservableObject` + Combine)
- **Backend:** [Supabase](https://supabase.com) (auth & data persistence)
- **AI:** Google Gemini API for the in-app chat assistant
- **Location:** MapKit & CoreLocation for nearby libraries
- **Notifications:** UserNotifications framework with a dedicated background timer manager

## Getting Started

### Requirements
- Xcode 15+
- iOS 16+
- A [Supabase](https://supabase.com) project (URL + anon key)
- A [Google Gemini API key](https://ai.google.dev/)

### Setup

1. Clone the repo
   ```bash
   git clone https://github.com/tunaarikaya/YKS-Dostum-App.git
   ```
2. Open the project in Xcode.
3. Set the following environment variables in your Xcode scheme (**Product → Scheme → Edit Scheme → Run → Arguments → Environment Variables**):

   | Key | Value |
   |---|---|
   | `SUPABASE_URL` | your Supabase project URL |
   | `SUPABASE_API_KEY` | your Supabase anon key |
   | `GEMINI_API_KEY` | your Gemini API key |

4. Build & run.

> Note: no API keys are hardcoded or committed in this repo — the app reads them from environment variables at runtime, so it won't compile a working AI/backend connection without your own keys configured above.

## Roadmap

- [ ] Add screenshots & app preview
- [ ] Unit tests for ViewModels
- [ ] CI (build + test) via GitHub Actions
- [ ] iCloud sync

## Credits

Developed for our university's IEEE Student Branch computer science project, by [Mehmet Tuna Arıkaya](https://github.com/tunaarikaya).

## License

Licensed under the [MIT License](LICENSE).
