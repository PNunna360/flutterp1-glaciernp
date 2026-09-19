# Glacier National Park Guide App

A Flutter app for exploring Glacier National Park — browse trails, scenic viewpoints, and wildlife, plan your visit, and flip through a photo gallery, all in one place.

## Features

- **Overview** — A home screen introducing the park, with a photo gallery and quick highlights.
- **Trails** — A curated list of well-known hikes with distance, difficulty, and detailed descriptions of the route and what to expect.
- **Viewpoints** — Notable scenic stops and overlooks along the park's roads and trails, with area context and details.
- **Wildlife & Nature** — Profiles of animals you might encounter (like grizzly bears), including safety notes for hiking in bear country.
- **Plan Your Visit** — Practical information to help visitors prepare for a trip to the park.

## Screenshots

*Add a few screenshots here once you have them — drop the images into a folder (e.g. `docs/screenshots/`) and reference them like:*

```md
![Home screen](docs/screenshots/home.png)
```

## Tech Stack

- **Flutter** (Material 3) with a custom theme built around forest green and glacier blue
- Pure Dart data models (`Trail`, `Viewpoint`, `WildlifeAnimal`) — no backend, all content is bundled with the app
- Bottom navigation bar switching between five main sections via an `IndexedStack`

## Project Structure

```
lib/
├── data/            # Static content: trails, viewpoints, wildlife, gallery images
├── models/          # Data models (Trail, Viewpoint, WildlifeAnimal)
├── pages/           # Top-level screens (Home, Trails, Viewpoints, Wildlife, Plan Visit)
├── widgets/         # Reusable UI pieces (detail page, gallery grid, header banner, info card)
├── theme/           # App color palette
└── main.dart        # App entry point and navigation shell
```

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (Dart SDK ^3.13.3, bundled with recent Flutter releases)
- A configured platform target — Android Studio / Xcode / a browser, depending on where you want to run it

### Installation

```
git clone https://github.com/PNunna360/flutterp1-glaciernp.git
cd flutterp1-glaciernp
flutter pub get
```

### Running the app

```
flutter run
```

This project supports Android, iOS, web, Windows, macOS, and Linux — `flutter run` will let you pick a connected device or emulator, or target a specific platform directly:

```
flutter run -d chrome    # Web
flutter run -d windows   # Windows desktop
flutter run -d macos     # macOS desktop
```

## About

This is a personal project built while learning Flutter, using Glacier National Park as the subject for a small multi-page, content-driven app.
